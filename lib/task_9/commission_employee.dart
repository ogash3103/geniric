import 'package:geniric/task_9/employee_abstract.dart';

class CommissionEmployee extends Employee {
  final double grossSales;
  final double commissionRate;

  CommissionEmployee({
    required super.firstName,
    required super.lastName,
    required super.socialSecurityNumber,
    required this.grossSales,
    required this.commissionRate,
  });

  @override
  double getPaymentAmount() {
    return grossSales * commissionRate;
  }

}