-- 1. DATA DISCOVERY & EDA

-- Check if data is accessible
SELECT * FROM melb_data;

-- Range and average profiling for Price and Distance
SELECT 
    MIN(Price) AS min_price, 
    MAX(Price) AS max_price, 
    AVG(Price) AS avg_price,
    MIN(Distance) AS min_dist, 
    MAX(Distance) AS max_dist
FROM melb_data;

-- Verification of regions
SELECT DISTINCT Regionname 
FROM melb_data;

-- Regional listing density
SELECT 
    Regionname, 
    COUNT(*) AS listing_count
FROM melb_data
GROUP BY Regionname
ORDER BY listing_count DESC;

-- Suburb breakdown within top regions
SELECT 
    Regionname, 
    Suburb, 
    COUNT(*) AS listings
FROM melb_data
GROUP BY Regionname, Suburb
ORDER BY Regionname, listings DESC;


-- 2. COMPETITIVE ANALYSIS (Sellers)

-- Top 5 real estate companies per region
WITH SellerRanks AS (
    SELECT 
        Regionname,
        SellerG,
        COUNT(*) AS SaleCount,
        ROW_NUMBER() OVER (
            PARTITION BY Regionname 
            ORDER BY COUNT(*) DESC
        ) AS SellerRank
    FROM melb_data
    WHERE Regionname IN ('Southern Metropolitan', 'Northern Metropolitan', 'Western Metropolitan')
    GROUP BY Regionname, SellerG
)
SELECT 
    Regionname,
    CASE 
        WHEN SellerRank <= 5 THEN SellerG 
        ELSE 'Other (Regional)' 
    END AS SellerGrouped,
    SUM(SaleCount) AS TotalSales
FROM SellerRanks
GROUP BY Regionname, SellerGrouped
ORDER BY Regionname, TotalSales DESC;


-- 3. PRICE & DISTANCE ANALYSIS BY REGION

WITH DistanceBinned AS (
    SELECT *,
        CASE 
            WHEN Distance BETWEEN 0 AND 3 THEN '0-3km (CBD)'
            WHEN Distance > 3 AND Distance <= 6 THEN '3-6km (Inner)'
            WHEN Distance > 6 AND Distance <= 9 THEN '6-9km (Middle)'
            WHEN Distance > 9 AND Distance <= 12 THEN '9-12km (Mid-Outer)'
            ELSE '12km+'
        END AS Distance_Zone
    FROM v_melb_final_for_python
),
RegionalGrouped AS (
    SELECT 
        Regionname,
        SellerG,
        Distance_Zone,
        Price,
        CASE 
            WHEN Regionname = 'Northern Metropolitan' AND SellerG IN ('Nelson','Biggin','Jellis','Collins','McGrath') THEN SellerG
            WHEN Regionname = 'Southern Metropolitan' AND SellerG IN ('Jellis','Marshall','hockingstuart','Greg','Buxton') THEN SellerG
            WHEN Regionname = 'Western Metropolitan' AND SellerG IN ('Nelson','Brad','Barry','hockingstuart','Barlow') THEN SellerG
            ELSE 'Other (Regional)'
        END AS Regional_Group
    FROM DistanceBinned
)
SELECT 
    Regionname,
    Distance_Zone,
    Regional_Group,
    AVG(Price) AS Avg_Price,
    COUNT(*) AS Listing_Count
FROM RegionalGrouped
GROUP BY Regionname, Distance_Zone, Regional_Group
ORDER BY Regionname, Distance_Zone, Avg_Price DESC;


-- Listings per Distance bracket and Price range
SELECT 
    CASE 
        WHEN Distance < 3 THEN '0-3 km'
        WHEN Distance BETWEEN 3 AND 6 THEN '3-6 km'
        WHEN Distance BETWEEN 6 AND 9 THEN '6-9 km'
        WHEN Distance BETWEEN 9 AND 12 THEN '9-12 km'
        ELSE '12+ km'
    END AS Distance_Zone,
    CASE 
        WHEN Price < 500000 THEN '<500K'
        WHEN Price BETWEEN 500000 AND 1000000 THEN '500K-1M'
        WHEN Price BETWEEN 1000000 AND 1500000 THEN '1M-1.5M'
        ELSE '1.5M+'
    END AS Price_Range,
    COUNT(*) AS Listings
FROM melb_data
GROUP BY Distance_Zone, Price_Range
ORDER BY Distance_Zone, Price_Range;


-- 4. DATA CLEANING & INTEGRITY CHECKS

-- Null or missing spatial data
SELECT Suburb, Lattitude, Longtitude 
FROM melb_data
WHERE Lattitude = 0 
   OR Longtitude = 0 
   OR Lattitude IS NULL;

-- Exact row duplicates
SELECT Address, Price, Date, Suburb, Type, COUNT(*) AS occurrence_count
FROM melb_data
GROUP BY Address, Price, Date, Suburb, Type
HAVING occurrence_count > 1;

-- Double listings (same address, different price/entry)
SELECT 
    m.Address, 
    m.Suburb, 
    m.Price, 
    m.Method, 
    m.Date, 
    m.SellerG
FROM melb_data m
JOIN (
    SELECT Address, Suburb
    FROM melb_data
    GROUP BY Address, Suburb
    HAVING COUNT(*) > 1
) dupes ON m.Address = dupes.Address AND m.Suburb = dupes.Suburb
ORDER BY m.Address, m.Date;


-- 5. FINAL DATA VIEW (for Python/BI)

-- Keep only latest transaction per address
CREATE OR REPLACE VIEW v_melb_final_for_python AS
WITH RankedSales AS (
    SELECT *, 
           ROW_NUMBER() OVER(
               PARTITION BY Address, Suburb 
               ORDER BY Date DESC
           ) AS sale_rank
    FROM melb_data
    WHERE Price > 0 
      AND Lattitude IS NOT NULL
)
SELECT * FROM RankedSales 
WHERE sale_rank = 1;
