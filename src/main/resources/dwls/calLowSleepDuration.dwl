%dw 2.0
output application/json
---
if ((((sum(payload.sleep.minutesAsleep ) default 0) / 60) ) < vars.sleepData.minimumSleepHours)

{
	message: (vars.firstName default "") ++  "'s average sleep duration is lower than expected. Please take appropriate measures"
}
else 
{
	message: ""
}	