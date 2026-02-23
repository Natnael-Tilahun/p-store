enum TextSizes { small, medium, large }

enum OrderStatus { processing, shipped, delivered }

enum PaymentMethods {
  paypal,
  googlePay,
  applePay,
  visa,
  masterCard,
  creditCard,
  payStack,
  razorPay,
  paytm,
}

enum AppRole { admin, user }

enum Role {
  admin,
  manager,
  operator,
  fleetOwner,
  fleetManager,
  fleetOperator,
  driver,
  user,
  unknown,
}

enum ChatType { support }

enum ChatMessageStatus { sending, sent, delivered, read, failed }

enum VerificationStatus {
  unknown,
  pending,
  submitted,
  underReview,
  approved,
  rejected,
}
