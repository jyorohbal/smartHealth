%dw 2.0
output application/json
---
{
	peakHeartRateMin : vars.notificationData.PMO_Tool__Max_minutes_in_Peak_Heart_Beat_Range__c[0],
	outOfRangeHeartRateMin : vars.notificationData.PMO_Tool__Max_minutes_in_Low_Heart_Beat_Range__c[0],
	
	period: if (vars.notificationData.PMO_Tool__No_Of_Past_Days__c[0] == "One Day") "1d" else if (vars.notificationData.PMO_Tool__No_Of_Past_Days__c[0] == "One Week") "1w"  else  "1m",

}