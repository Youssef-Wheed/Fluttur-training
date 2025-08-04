class Person {
  String name;
  String? email;
  String? country;
  String? city;
  String? street;

  Person({
    required this.name,
    this.email,
    this.country,
    this.city,
    this.street,
  });
}

extension PersonInfo on Person {
  String getFullInfo() {
    return '''
name: ${name}
email: ${email ?? "Unspecified"}
country: ${country ?? "Unspecified"}
city: ${city ?? "Unspecified"}
street: ${street ?? "Unspecified"}
''';
  }
}

void main() {
  var p1 = Person(
    name: "youssef",
    email: "youssef@gmail.com",
    country: "egypt",
    city: "minya",
  );

  var p2 = Person(name: "Youssef");

  print(p1.getFullInfo());
  print('---------------------');
  print(p2.getFullInfo());
}
