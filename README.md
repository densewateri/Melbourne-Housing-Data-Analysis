# Melbourne-Housing-Data-Analysis

In this project we explore the price-distance decay from the CBD of the Melbourne residential market to determine what areas may hold the best value. This is done by analysing price decay across dwelling tpyes and room counts, identifying market inefficiencies and value pockets for stakeholders

## Key Findings

blah blah blah

## Core Recommendations

# Findings

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
  
* This chart helps stakeholders **identify hidden value pockets and premium zones**, complementing your earlier Price vs Distance and KDE analyses.
