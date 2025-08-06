import 'address.dart'; // because Employee has an Address object
import 'dart:convert'; // for JSON encoding/decoding

class Employee {
  int id;
  String name;
  String email;
  Address address;

  // Constructor
  Employee({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
  });

  // Update method
  void updateEmployee({
    String? newName,
    String? newEmail,
    Address? newAddress,
  }) {
    if (newName != null) name = newName;
    if (newEmail != null) email = newEmail;
    if (newAddress != null) address = newAddress;
  }

  // Override == operator
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Employee &&
        other.id == id &&
        other.name == name &&
        other.email == email &&
        other.address == address; // comparing Address using its overridden ==
  }

  // Override hashCode
  @override
  int get hashCode =>
      id.hashCode & name.hashCode & email.hashCode & address.hashCode;

  // toString() 
  @override
  String toString() {
    return '''
  Employee Info:
ID: $id
Name: $name
Email: $email
Address:
${address.formatAddress(name)}
''';
  }

  // Convert Employee to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'address': {
        'street': address.street,
        'city': address.city,
        'postalCode': address.postalCode,
      },
    };
  }

  // Create Employee from JSON
  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      address: Address(
        street: json['address']['street'],
        city: json['address']['city'],
        postalCode: json['address']['postalCode'],
      ),
    );
  }
}
