import 'package:geniric/task_9/commission_employee.dart';

class BasePlusCommissionEmployee extends CommissionEmployee {
  final double baseSalary;

  BasePlusCommissionEmployee({
    required super.firstName,
    required super.lastName,
    required super.socialSecurityNumber,
    required super.grossSales,
    required super.commissionRate,
    required this.baseSalary
  });
  @override
  double getPaymentAmount() {
    return baseSalary + super.getPaymentAmount();
  }

}