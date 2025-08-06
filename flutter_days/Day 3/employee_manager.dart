import 'employee.dart';

class EmployeeManager {
  //  Singleton Implementation
  static final EmployeeManager _instance = EmployeeManager._internal();

  //  Private constructor
  EmployeeManager._internal();

  //  Public factory to access the instance
  factory EmployeeManager() => _instance;

  //  Private list of employees
  final List<Employee> _employees = [];

  // Add employee
  void addEmployee(Employee employee) {
    _employees.add(employee);
    print('Employee "${employee.name}" added.');
  }

  // Remove employee by ID
  void removeEmployee(int id) {
    _employees.removeWhere((emp) => emp.id == id);
    print('Employee with ID $id removed (if existed).');
  }

  // List all employees 
  void listEmployees() {
    if (_employees.isEmpty) {
      print('No employees found.');
    } else {
      print('Employee List:');
      for (var emp in _employees) {
        print(emp);
      }
    }
  }

  // Optional: Expose the listed employees
  List<Employee> get employees => List.unmodifiable(_employees);
}
