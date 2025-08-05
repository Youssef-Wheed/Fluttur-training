class Address {
  String street;
  String city;
  String postalCode;

  // Constructor
  Address({required this.street, required this.city, required this.postalCode});

  // Update address fields
  void updateAddress({
    String? newStreet,
    String? newCity,
    String? newPostalCode,
  }) {
    if (newStreet != null) street = newStreet;
    if (newCity != null) city = newCity;
    if (newPostalCode != null) postalCode = newPostalCode;
  }

  // Override == operator
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Address &&
        other.street == street &&
        other.city == city &&
        other.postalCode == postalCode;
  }

  // Override hashCode
  @override
  int get hashCode => street.hashCode ^ city.hashCode ^ postalCode.hashCode;

  // Custom format for display
  String formatAddress(String name_Emp) {
    return '''
$name_Emp
$street
$city, $postalCode
''';
  }
}
