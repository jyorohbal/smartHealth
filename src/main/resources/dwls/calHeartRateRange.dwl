%dw 2.0

var peakValue = sum(((flatten(payload."activities-heart".value.heartRateZones) ) filter ($.name == "Peak")).minutes default []) default 0
var outOfRangeValue =  sum(((flatten(payload."activities-heart".value.heartRateZones) ) filter ($.name == "Out of Range")).minutes default []) default 0


output application/json
---

if( (peakValue > vars.heartRateData.peakHeartRateMin  )   or (outOfRangeValue > vars.heartRateData.outOfRangeHeartRateMin ))

{
 message: (vars.firstName default "") ++  "'s Heart Rate is crossing the accepted range for long duration. Please take appropriate measures" 
}
else 
message: ""