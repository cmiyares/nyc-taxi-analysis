# NYC Taxi Data Analysis

![Python](https://img.shields.io/badge/Python-3.x-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue)
![SQL](https://img.shields.io/badge/SQL-Analytics-orange)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-green)

This project analyzes NYC taxi trip data using PostgreSQL and SQL to explore trip demand patterns, fare behavior, and geographic pickup trends.

The dataset comes from the NYC Taxi & Limousine Commission and contains detailed records of taxi trips including pickup times, locations, fares, and trip distances.

## Tools Used

- PostgreSQL
- SQL
- Python (pandas, matplotlib)
- Git / GitHub

## Project Workflow

1. Raw taxi trip data downloaded from the NYC TLC dataset.
2. Data converted from Parquet to CSV using Python.
3. A sample of 200,000 trips loaded into PostgreSQL.
4. SQL queries used to analyze trip demand and fare patterns.
5. Python used to generate visualizations of key results.

## Visualizations

### Taxi Demand by Hour

![Hourly Demand](images/hourly_demand.png)

Taxi demand increases steadily throughout the day and peaks during evening commute hours around 6 PM.

### Top Pickup Zones

![Top Pickup Zones](images/top_zones.png)

Most taxi pickups occur in Manhattan, particularly in busy areas such as Midtown and the Upper East Side.

## Key Insights

- Manhattan accounts for the majority of taxi trips in the dataset.
- Airport-related zones in Queens show higher average fares.
- Taxi demand peaks during evening commute hours.
- Late-night trips tend to have longer travel distances.

## Repository Structure

nyc-taxi-analysis
│
├── notebooks
│ convert_sample.py
│ create_visualizations.py
│
├── sql
│ 00_create_tables.sql
│ 01_trip_analysis.sql
│ 02_fare_analysis.sql
│ 03_hourly_demand.sql
│ 04_top_zones_by_borough.sql
│ 05_distance_fare_by_hour.sql
│
├── data
│ outputs
│ hourly_demand.csv
│ top_zones.csv
│
└── images
hourly_demand.png
top_zones.png
