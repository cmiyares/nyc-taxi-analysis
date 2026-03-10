import pandas as pd
from pathlib import Path

RAW_DIR = Path("data/raw")
PROCESSED_DIR = Path("data/processed")
PROCESSED_DIR.mkdir(parents=True, exist_ok=True)

parquet_file = RAW_DIR / "yellow_tripdata_2025-11.parquet"
output_file = PROCESSED_DIR / "yellow_tripdata_sample.csv"

print(f"Reading: {parquet_file}")

df = pd.read_parquet(parquet_file)
print(f"Loaded rows: {len(df)}")

sample_size = min(200000, len(df))
sample_df = df.sample(n=sample_size, random_state=42)

sample_df.to_csv(output_file, index=False)

print(f"Saved sample to: {output_file}")
print(f"Sample rows: {len(sample_df)}")
print("Columns:")
print(df.columns.tolist())