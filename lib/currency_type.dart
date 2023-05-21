enum CurrencyType {
  jpy,
  vnd,
  thb,
}

extension ParseToString on CurrencyType {
  String toShortString() {
    return toString().split('.').last.toUpperCase();
  }
}
