import 'package:geniric/task_9/employee_abstract.dart';

class SalariedEmployee extends Employee {
  final double weeklySalary;

  SalariedEmployee({
    required super.firstName,
    required super.lastName,
    required super.socialSecurityNumber,
    required this.weeklySalary,
  });

  @override
  double getPaymentAmount() {
    return weeklySalary;
  }

}