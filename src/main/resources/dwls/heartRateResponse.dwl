%dw 2.0
output application/json
---
if ((((flatten(payload."activities-heart".value.heartRateZones))filter ($.name == "Peak"))).minutes != null) payload else 

{
  "activities-heart": [
    {
      "dateTime": "2019-05-08",
      "value": {
        "customHeartRateZones": [
          {
            "caloriesOut": 1164.09312,
            "max": 90,
            "min": 30,
            "minutes": 718,
            "name": "Below"
          },
          {
            "caloriesOut": 203.65344,
            "max": 110,
            "min": 90,
            "minutes": 74,
            "name": "Custom Zone"
          },
          {
            "caloriesOut": 330.76224,
            "max": 220,
            "min": 110,
            "minutes": 42,
            "name": "Above"
          }
        ],
        "heartRateZones": [
          {
            "caloriesOut": 979.43616,
            "max": 86,
            "min": 30,
            "minutes": 10,
            "name": "Out of Range"
          },
          {
            "caloriesOut": 514.16208,
            "max": 121,
            "min": 86,
            "minutes": 185,
            "name": "Fat Burn"
          },
          {
            "caloriesOut": 197.92656,
            "max": 147,
            "min": 121,
            "minutes": 18,
            "name": "Cardio"
          },
          {
            "caloriesOut": 6.984,
            "max": 220,
            "min": 147,
            "minutes": 5,
            "name": "Peak"
          }
        ],
        "restingHeartRate": 76
      }
    }
  ]
}