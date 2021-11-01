%dw 2.0
var currentTime = now() >> "UTC" default 0
var expirationDateTime = vars.tokenData.expirationDateTime default 0
output application/json
---
(expirationDateTime  - currentTime ).seconds