%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "CreditorName": "update - 2",
  "MinPaymentPercentage": 12.01,
  "Balance": 300020.22
})