import pandas as pd
from sklearn.ensemble import RandomForestRegressor
import json

df = pd.read_csv('delhi_ncr_aqi_dataset.csv')
df = df[df['city'] == 'Delhi'].fillna(method='ffill')



df['Next_Day_AQI'] = df['AQI'].shift(-1)
features = df[['PM2.5', 'PM10', 'NO2', 'CO']].iloc[:-1]
target = df['Next_Day_AQI'].iloc[:-1]

model = RandomForestRegressor(n_estimators=100)
model.fit(features, target)


mock_data = {
    "current_aqi": 342,
    "predicted_aqi": 310,
    "status": "Very Poor",
    "recommendation": "Suggesting Online Classes for Faridabad Campus due to stagnant air."
}

with open('aqi_data.json', 'w') as f:
    json.dump(mock_data, f)

print("Prototype data generated successfully!")