import 'address.dart';
import 'employee.dart';
import 'employee_manager.dart';
import 'dart:convert'; // for jsonEncode, jsonDecode

void main() {
  print('Employee Management System Started');

  // Create Address
  Address address1 = Address(
    street: "123 Main St",
    city: "Cairo",
    postalCode: "11311",
  );
  Address address2 = Address(
    street: "456 Elm St",
    city: "Alexandria",
    postalCode: "21532",
  );

  // Create Employees
  Employee emp1 = Employee(
    id: 1,
    name: "Youssef Gendy",
    email: "youssef@example.com",
    address: address1,
  );
  Employee emp2 = Employee(
    id: 2,
    name: "Hany Ahmed",
    email: "Hon@example.com",
    address: address2,
  );

  // Get Singleton Manager Instance
  var manager = EmployeeManager();
  // Add Employees
  manager.addEmployee(emp1); // Employee "Youssef Gendy" added.
  manager.addEmployee(emp2); // Employee "Hany Ahmed" added.

  // List All Employees
  print("\n Listing all employees:");
  manager.listEmployees(); // list all employees

  
  // Remove Employee
  manager.removeEmployee(2); // hany deleted

  print("\nAfter removing employee with ID 2:");
  manager.listEmployees();

  //  Convert to JSON
  print("\nEmployee 1 as JSON:");
  Map<String, dynamic> empJson = emp1.toJson();
  print(jsonEncode(empJson)); // String JSON

  //  Create New Employee from JSON
  Employee emp3 = Employee.fromJson(empJson);

  print("\n New employee created from JSON:");
  print(emp3);

}
