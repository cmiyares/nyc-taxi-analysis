import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path

OUTPUT_DIR = Path("images")
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

# Load exported analysis datasets
hourly_df = pd.read_csv("data/outputs/hourly_demand.csv")
zones_df = pd.read_csv("data/outputs/top_zones.csv")

# Chart 1: Hourly demand
plt.figure(figsize=(10, 5))
plt.plot(hourly_df["pickup_hour"], hourly_df["trip_count"], marker="o")
plt.title("NYC Taxi Trip Demand by Pickup Hour")
plt.xlabel("Hour of Day")
plt.ylabel("Trip Count")
plt.xticks(range(0, 24))
plt.tight_layout()
plt.savefig(OUTPUT_DIR / "hourly_demand.png")
plt.close()

# Chart 2: Top pickup zones
plt.figure(figsize=(12, 7))
plt.barh(zones_df["zone"], zones_df["trip_count"])
plt.title("Top 20 Pickup Zones by Trip Volume")
plt.xlabel("Trip Count")
plt.ylabel("Zone")
plt.tight_layout()
plt.savefig(OUTPUT_DIR / "top_zones.png")
plt.close()

print("Charts created successfully.")
print("Saved images/hourly_demand.png")
print("Saved images/top_zones.png")