%dw 2.0
output application/json
---
if ((sum(payload."activities-steps".value ) default 0) < vars.threshold.value)

{
	message: (vars.firstName default "") ++  "'s planned physical activities are lower than expected levels. Please take appropriate measures"
}
else 
{
	message: ""
}