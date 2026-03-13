-/* ============================================================
   1. DATA DISCOVERY & EDA
   ============================================================ */

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

/* ============================================================
   2. COMPETITIVE ANALYSIS (Sellers)
   ============================================================ */

-- Checking top 5 real estate companies per region
WITH SellerRanks AS (
    SELECT 
        Regionname,
        SellerG,
        COUNT(*) AS SaleCount,
        -- Rank sellers within each specific region
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
    -- Group sellers outside the top 5 as 'Other'
    CASE 
        WHEN SellerRank <= 5 THEN SellerG 
        ELSE 'Other (Regional)' 
    END AS SellerGrouped,
    SUM(SaleCount) AS TotalSales
FROM SellerRanks
GROUP BY Regionname, SellerGrouped
ORDER BY Regionname, TotalSales DESC;


/* ============================================================
   3. DATA CLEANING & INTEGRITY CHECKS
   ============================================================ */

-- Checking for null or missing spatial data
SELECT Suburb, Lattitude, Longtitude 
FROM melb_data
WHERE Lattitude = 0 
   OR Longtitude = 0 
   OR Lattitude IS NULL;

-- Checking for exact row duplicates
SELECT Address, Price, Date, Suburb, Type, COUNT(*) AS occurrence_count
FROM melb_data
GROUP BY Address, Price, Date, Suburb, Type
HAVING occurrence_count > 1;

-- Identifying double listings (same address, different price/entry)
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


/* ============================================================
   4. DATA ENGINEERING (PYTHON/BI PREP)
   ============================================================ */

-- Create final view: Keep only the latest transaction per address
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
