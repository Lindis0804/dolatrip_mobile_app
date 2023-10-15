// ignore_for_file: constant_identifier_names

enum Flavor {
  DEV,
  STAGING;

  static Flavor fromString(String flavor) {
    return Flavor.values.firstWhere((e) => e.toString() == 'Flavor.$flavor');
  }

  String get name {
    return toString().split('.').last;
  }
}
