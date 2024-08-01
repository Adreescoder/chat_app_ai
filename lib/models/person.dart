class Person {
  String name;
  int age;
  String email;

  // Constructor
  Person({required this.name, required this.age, required this.email});

  // Convert a Person object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'email': email,
    };
  }

  // Create a Person object from a JSON map
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      age: json['age'],
      email: json['email'],
    );
  }
}