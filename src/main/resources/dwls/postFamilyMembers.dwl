%dw 2.0
import * from dw::core::Strings
output application/java
---
[{

	PMO_Tool__First_Name__c: payload.firstName,
	PMO_Tool__Last_Name__c: payload.lastName,
	PMO_Tool__Relationship__c: payload.relationship,
	PMO_Tool__phone__c: payload.phone default "+919884259941",
	PMO_Tool__notifications__c: payload.enableNotifications default false,
	PMO_Tool__email__c: payload.email

}]