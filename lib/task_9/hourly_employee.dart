import 'employee_abstract.dart';

class HourlyEmployee extends Employee {
  final double wage;
  final double hours;

  HourlyEmployee({
    required super.firstName,
    required super.lastName,
    required super.socialSecurityNumber,
    required this.wage,
    required this.hours
  });

  @override
  double getPaymentAmount() {
    if(hours <= 40) {
      return wage * hours;
    }
    return (40 * wage) + ((hours - 40) * wage * 1.5);
  }


}