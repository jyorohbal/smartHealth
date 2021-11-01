%dw 2.0
var limit = if (vars.notificationData.PMO_Tool__No_Of_Past_Days__c[0] == "One Day") 1 else if (vars.notificationData.PMO_Tool__No_Of_Past_Days__c[0] == "One Week") 7  else  30
output application/json
---
{
	minimumSleepHours : vars.notificationData.PMO_Tool__Minimum_Sleep_Duration_in_Hours__c[0],

	limit: limit,
	afterDate: now() as Date- ("P$(limit)D" as Period) ,
	sort: 'desc',
	offset: 0,
	
}