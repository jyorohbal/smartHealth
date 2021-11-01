%dw 2.0
import * from dw::core::Strings
output application/json
---
(payload map (obj,indx) ->
{
	"id": (obj.Id as String) withMaxSize 15,
	"firstName": obj.PMO_Tool__First_Name__c,
	"lastName": obj.PMO_Tool__Last_Name__c,
	"email": obj.PMO_Tool__email__c ,
	"phoneNumber": obj.PMO_Tool__phone__c,
	"relationship": obj.PMO_Tool__Relationship__c,
	"notifications": obj.PMO_Tool__notifications__c as Boolean,	
	 "recordId": obj.Name
}) filter ($.notifications == true )