%dw 2.0
var currentTime = now() >> "UTC"
var reserve = Mule::p('oAuth.token.requestPriorExpirationSeconds')
output application/json
---
vars.oAuthToken ++ {

expirationDateTime : (currentTime + (("PT" ++ (vars.oAuthToken.expires_in default 0)++ "S") as Period) ) as DateTime
}