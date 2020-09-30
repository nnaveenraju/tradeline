%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "creditorName": "update - 2",
  "minPaymentPercentage": 12.01,
  "balance": 300020.22
})