# Melbourne-Housing-Data-Analysis

In this project we explore the price-distance decay from the CBD of the Melbourne residential market to determine what areas may hold the best value. This is done by analysing price decay across dwelling tpyes and room counts, identifying market inefficiencies and value pockets for stakeholders

## Executive Summary

This analysis explores the Melbourne residential housing market to identify value opportunities, price trends, and strategic insights for home buyers. Using property listings, distances from the CBD, room counts, dwelling types, and agency data, we evaluated how location, property features, and market concentration influence pricing.  

### Key Insights

1. **Distance Decay:**  
   * Houses and Townhouses exhibit a strong negative correlation with distance from the CBD; prices drop sharply as you move further out.  
   * Units are less sensitive to location, with prices largely driven by internal features rather than land value.  

2. **Room Count & Availability:**  
   * 3-room properties dominate the inner and mid-suburbs, offering balance between space, availability, and affordability.  
   * Larger homes (4+ rooms) are limited and mostly premium houses; they are scarce in Townhouses and Units.  

3. **Agency Influence:**  
   * Top agencies in inner-ring suburbs (<9 km) maintain premium pricing.  
   * Outer suburbs (>12 km) show convergence in pricing, meaning property features matter more than agency reputation.  

4. **Market Concentration:**  
   * Inner suburbs have high listing density and premium pricing.  
   * Outer suburbs have lower density, more mid-priced homes, and opportunities for value-focused buyers.  

5. **Geographic Price Deviations:**  
   * Some outer suburbs (e.g., Airport West, Altona, Altona North) are significantly under-valued relative to expected CBD distance pricing.  
   * Inner suburbs (e.g., Albert Park, Abbotsford) are over-valued, reflecting high demand and premium features.  

### Implications for Home Buyers

* **Inner suburbs (<6 km):** Limited supply, high prices — ideal for buyers prioritizing lifestyle, schools, and proximity.  
* **Mid-suburbs (6–12 km):** Balanced options with moderate pricing and availability; suitable for families seeking space without extreme premiums.  
* **Outer suburbs (>12 km):** Larger homes at lower prices, potential value opportunities; best for buyers prioritizing affordability or future growth.  
* **Property Type Selection:** Choose Houses/Townhouses for land and long-term value; Units for affordability and low maintenance.  
* **Agency Strategy:** Focus on top agencies in inner suburbs for premium listings; outer suburbs, agency matters less.  

> **Overall:** By balancing **distance, property type, room count, and agency**, home buyers can maximize value in Melbourne’s dynamic housing market, choosing properties that meet both lifestyle and budget goals.

## Distance Decay By Property Type

<img width="1070" height="611" alt="image" src="https://github.com/user-attachments/assets/e27f6db1-579d-490c-8e14-9f8b436a2d20" />


### Observations:

* Strong negative correlation with distance from the CBD. Prices drop steeply as distance increases.

* Regression line is nearly flat; proximity to the CBD has minimal impact on apartment valuations.

* The difference between Houses and Units is largest within 0–5 km of the CBD and narrows toward outer suburbs (e.g., 30 km), though Houses remain the premium asset.

### Insights:

* Detached dwellings capture most value from land, while Units’ value depends more on internal features (amenities, floor plan, building age).

* Houses are highly sensitive to distance (“High-Beta”); small moves away from the CBD reduce equity more than for Units. Outer-suburb Houses are more affordable but slower for proximity-based capital growth.

* Townhouses act as “House-lite” alternatives, following similar valuation patterns to Houses, unlike high-density Units.

## Price Vs Distance, segmented by no. of rooms

<img width="1127" height="944" alt="image" src="https://github.com/user-attachments/assets/7cc15f7e-a22a-4fb5-80d7-b91507a10661" />

### Observations:

* Most data points are 3-room Houses/Townhouses/Units; higher-room counts have progressively fewer listings.

* Houses and Townhouses continue to show a strong negative correlation with distance. Units remain consistently below Houses/Townhouses.

* For 3-room properties, House and Townhouse prices align near 14 km.

* As room count increases, fewer data points exist. Only Houses appear for larger room counts, reflecting limited availability of larger Townhouses/Units.

### Insights:

* 3-room properties dominate the inner-ring market, heavily influencing observed price trends.

* Higher-room-count Houses are both limited in supply and positioned as premium assets; Townhouses/Units are rare in this range.

* Units consistently price below Houses/Townhouses, showing value is driven more by internal features than land, even when higher-room Houses are scarce.

## Price Decay By Agency

## Northern Metropolitan
<img width="1103" height="543" alt="image" src="https://github.com/user-attachments/assets/dab42eb6-0e3b-4066-a4c4-49c4f4148566" />

### Observations:

* Inner zones (0–6 km) show the highest average prices for top agencies.

* Average prices decrease as distance from the CBD increases.

* “Other (Regional)” consistently falls below top agencies across all distance brackets.

### Insights:

* Agency reputation drives premium pricing in inner-ring properties.

* Beyond ~9 km, differences between agencies narrow, indicating that location and property type start to dominate.

* Buyers seeking premium inner-ring properties should focus on top agencies; outer-zone buyers can prioritize property features over agency.

## Southern Metropolitan

<img width="1118" height="551" alt="image" src="https://github.com/user-attachments/assets/f3427911-86f5-4e79-b5a7-b119f931f628" />

### Observations: 
* Top agencies maintain higher average prices in inner (3–6 km) and middle (6–9 km) zones.
    
* Outer zones (12 km+) show price convergence; **Other (Regional)** comes closer to top agencies.
   
* Some agencies (e.g., Buxton, Jellis) retain small premiums even in outer zones.  

### Insights:  
* Inner-ring agency branding strongly influences prices; outer zones are mostly property-driven.
    
* Buyers seeking premium properties should prioritize top agencies in 3–9 km zones.
  
* Outer-ring properties offer more homogeneous pricing, highlighting the importance of features over agency.

  ## Western Metroplitan

  <img width="1105" height="545" alt="image" src="https://github.com/user-attachments/assets/45640c71-30f3-41b7-a9ec-629e350e4ee3" />

  ### Observations:
* Top agencies dominate pricing in inner and mid-outer zones (3–12 km).
  
* Prices decline with distance across all agencies.
  
* In outer zones (12 km+), **Other (Regional)** approaches top agency averages, showing convergence.
* 
  ### Insights:
* Agency influence is strongest in inner zones; beyond ~12 km, distance and property features outweigh agency branding.
  
* Buyers seeking high-value inner-ring properties should focus on top agencies.
  
* Outer zones provide opportunities for buyers prioritizing availability and price rather than agency reputation.
  
* **Possible explanation:** Some top agencies (e.g., Nelson, Brad) maintain a premium because they specialize in higher-value or newly developed homes in inner and mid-outer zones, whereas “Other (Regional)” mainly lists standard properties.

## Melbourne Market Concentration: Price vs. Distance

<img width="873" height="580" alt="image" src="https://github.com/user-attachments/assets/916193f1-6b8a-41ff-9f05-b01c0d804303" />

### Market Table (Listings per Distance & Price Bracket)

| Distance Zone | <500K | 500K–1M | 1M–1.5M | 1.5M+ |
|---------------|-------|---------|---------|-------|
| 0–3 km        | 5     | 8       | 21      | 4     |
| 3–6 km        | 11    | 44      | 40      | 34    |
| 6–9 km        | 12    | 27      | 11      | 33    |
| 9–12 km       | 2     | 47      | 16      | 25    |
| 12+ km        | 8     | 80      | 23      | 5     |

### Observations:
* The highest concentration of listings occurs in **3–9 km**, with the majority priced between **$500K–$1.5M**.
  
* Inner zones (<3 km) have fewer listings but a noticeable high-price cluster (1M–1.5M).
   
* Outer zones (>12 km) show fewer high-end listings, but a large number of mid-priced homes ($500K–1M).
  
* The KDE contours correspond well with this distribution: tight contours in the inner-ring reflect dense listings, while sparser contours in outer zones reflect lower density and more variability.  

### Insights:
* The Melbourne housing market is **densely concentrated in the inner to mid suburbs**, highlighting high buyer activity in these zones.
  
* Inner CBD-adjacent properties (<3 km) are limited but command high prices, reinforcing the “premium land” effect.
  
* Sparse listings in outer zones suggest opportunities for buyers seeking value or investors targeting less-saturated markets.
    
* **Possible explanation:** Developers and agencies focus on high-demand inner-ring areas, while outer suburbs contain fewer listings, often larger or specialized properties.

## Melbourne Suburb Analysis: Geographic Price Deviation

<img width="1121" height="734" alt="image" src="https://github.com/user-attachments/assets/233de4ed-8c86-4d2c-b113-3c61f2dc40a0" />

### Market Table: Top Under- and Over-Valued Suburbs

| Suburb             | Avg Distance (km) | Avg Price (AUD) | Value Gap (AUD) | Note               |
|-------------------|-----------------|----------------|----------------|------------------|
| Airport West       | 14.0            | 711,910        | -1,171,944     | Under-valued    |
| Altona             | 14.0            | 774,871        | -1,150,847     | Under-valued    |
| Altona North       | 11.0            | 765,353        | -783,594       | Under-valued    |
| Ashwood            | 12.0            | 1,100,871      | -601,576       | Under-valued    |
| Avondale Heights   | 10.0            | 882,265        | -582,956       | Under-valued    |
| Albert Park        | 3.0             | 1,881,869      | 1,421,371      | Over-valued    |
| Abbotsford         | 2.0             | 1,077,237      | 728,375        | Over-valued    |
| Armadale           | 6.0             | 1,437,532      | 558,400        | Over-valued    |
| Alphington         | 6.0             | 1,341,048      | 447,961        | Over-valued    |
| Ascot Vale         | 6.0             | 1,008,282      | 184,967        | Over-valued    |

### Observations:
* The **green suburbs** (negative Value Gap) are priced **well below the expected baseline** given their distance from the CBD, representing potential value-buy opportunities.
  
* The **red suburbs** (positive Value Gap) are **priced above the baseline**, showing premium pricing relative to the market.
   
* The gap can be substantial: for example, Airport West is almost **$1.17M below expected**, while Albert Park is **$1.42M above expected**.
  
* Inner suburbs (<6 km) dominate the over-valued list, while outer suburbs (>10 km) dominate the under-valued list.

### Insights:
* **Investors or first-time buyers** may target green suburbs for better value relative to distance from the CBD.
  
* **Premium buyers** may focus on red suburbs, where high demand or superior features justify above-baseline pricing.
   
* Geographic deviations show that **distance alone doesn’t fully explain price**; local amenities, property type, and suburb desirability play a key role.

## Market Comparison: Price Decay by Region

<img width="1094" height="591" alt="image" src="https://github.com/user-attachments/assets/58ee8db7-d4c7-4f10-b8de-07b5692d5318" />

### Regional Metrics (Average Price by Distance Zone)

| Regionname             | 0-3 km      | 3-6 km      | 6-9 km      | 9-12 km     | 12+ km      |
|------------------------|------------|------------|------------|------------|------------|
| Northern Metropolitan  | $1,077,237 | -          | $1,341,048 | -          | -          |
| Southern Metropolitan  | -          | $1,881,869 | $1,437,532 | $1,671,816 | $1,100,871 |
| Western Metropolitan   | -          | $1,008,282 | -          | $804,324   | $745,639   |

**Note:** `-` indicates no listings in that distance zone.

### Regional Decay Rates:
| Regionname             | Price Decay per km (AUD/km) |
|------------------------|-----------------------------|
| Northern Metropolitan  | 651,282                     |
| Southern Metropolitan  | 589,326                     |
| Western Metropolitan   | 270,000                     |

### Observations:
* **Northern Metropolitan** shows a strong inner- and mid-ring presence with limited outer-zone listings.
    
* **Southern Metropolitan** maintains high prices across 3–12 km, indicating premium inner and middle suburbs.
  
* **Western Metropolitan** has lower prices overall and a steeper drop-off beyond 6 km, reflecting outer-ring affordability.
  
* Outer zones (>12 km) converge toward similar pricing across regions, demonstrating the **dominant effect of distance** in the outer market.

### Insights:
* **Northern and Southern regions** have similar high-value inner/mid-ring markets, though Northern decay is slightly steeper.
   
* **Western Metropolitan** offers value-focused options further from the CBD due to its shallower slope in inner-ring but sharper drop in outer-ring.
  
* Stakeholders can **target inner-ring Southern/Northern suburbs for premium properties** and **outer Western suburbs for value or growth potential**.

## Recommendations for Home Buyers

### 1. Property Type Considerations
* **Houses & Townhouses:** Best for families seeking land, backyard space, and long-term growth. Prices drop sharply with distance from the CBD, so inner- and mid-ring areas are premium but offer better access to schools, transport, and amenities.
* **Units/Apartments:** More affordable and less sensitive to distance. Ideal for single professionals, couples, or small families who prioritize low-maintenance living over land size.

### 2. Room Count Strategy
* **3-Room Homes:** Most widely available, especially in inner suburbs (5–15 km). Good balance between affordability and space; high turnover makes it easier to resell if needed.
  
* **Larger Homes (4+ Rooms):** Limited supply, mostly premium houses. Suitable for families needing more space; may need to look further from the CBD to find available listings.

### 3. Choosing the Right Agency
* **Inner Zones (<9 km):** Top agencies often list premium properties. For higher-quality homes or better access to in-demand listings, focus on:
  
  - **Northern:** Nelson, Biggin, Jellis, Collins, McGrath  
  - **Southern:** Jellis, Marshall, Hockingstuart, Greg, Buxton  
  - **Western:** Nelson, Brad, Barry, Hockingstuart, Barlow

* **Outer Zones (>12 km):** Agency reputation matters less; property features and pricing dominate.

### 4. Geographic Value Opportunities
* **Under-Valued Suburbs:** Areas priced below the distance-adjusted baseline can offer better value. Examples include Airport West, Altona, Altona North, and Avondale Heights.
  
* **Over-Valued Suburbs:** Inner suburbs with high demand, like Albert Park or Abbotsford, carry a premium price. Ideal if you prioritize location, amenities, and prestige over cost.

### 5. Distance & Lifestyle Trade-Off
* **Inner Suburbs (<6 km):** Limited availability, higher prices, excellent amenities. Best for buyers who prioritize lifestyle and convenience.
  
* **Mid-Suburbs (6–12 km):** More listings, moderate pricing, balance of space and accessibility.
  
* **Outer Suburbs (>12 km):** Larger homes, lower prices, but longer commute. Good for buyers seeking affordability or larger properties.

### 6. Practical Takeaways
* Balance **distance from CBD**, **property type**, and **room count** to meet lifestyle and budget goals.
    
* Inner-ring properties: pay for location, proximity to work, schools, and amenities.
  
* Outer-ring properties: more affordable, larger, better value per square meter, but consider commute and transport access.
   
* Units: cost-efficient, less land, more predictable pricing — suitable for small households or first-time buyers.  

**Overall Insight:** 
Melbourne’s housing market rewards buyers who consider **location, property type, and size together**. By targeting suburbs with favorable price gaps or mid-ring properties, home buyers can maximize value without overpaying for location alone.
