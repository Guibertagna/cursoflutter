extension ForWeight on double {
  String forWeight() {
    return "${toStringAsFixed(1)}kg";
  }
}

extension ForHeight on int {
  String forHeight() {
    return "$this cm";
  }
}
