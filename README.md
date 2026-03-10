## Key Insights

### Trip Distribution

Manhattan dominates taxi activity in the dataset, accounting for the majority of trips in the sample.

### Fare Differences

Trips originating in Queens have significantly higher average fares ($44.63) compared to Manhattan ($14.09), likely due to airport travel distances.

### Tipping Behavior

Tip percentages vary significantly across boroughs. Manhattan trips show much higher tipping behavior (~17%) compared to Brooklyn (~2%) and the Bronx (~0.3%).

### Data Quality

Some records appear under categories such as "N/A" or "Unknown", indicating missing or special zone codes in the raw dataset.

### Hourly Taxi Demand

Taxi demand increases throughout the day and peaks in the early evening.

The busiest pickup hour in the sample dataset occurs around **6 PM**, which likely reflects evening commute activity and travel to entertainment areas.

Demand is lowest between **3 AM and 5 AM**, when overall travel activity is minimal.

### Top Pickup Zones by Borough

Using a SQL window function (`ROW_NUMBER()`), the busiest pickup zones within each borough were identified.

In Manhattan, the most active pickup locations are:

- Upper East Side South
- Midtown Center
- Upper East Side North

In Queens, airport-related zones dominate taxi demand:

- JFK Airport
- LaGuardia Airport

This highlights the importance of airport transportation in overall taxi activity.

### Trip Distance and Fare by Hour

Trip distance and average fares vary throughout the day.

Longer trips appear more frequently during late-night and early morning hours. For example, the average trip distance around **1 AM reaches over 33 miles**, which may reflect airport or long-distance trips.

During daytime hours, average trip distances remain shorter but trip volume increases significantly, indicating typical commuter and city travel patterns.