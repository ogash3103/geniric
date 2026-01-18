import 'package:geniric/task_9/payable_abstract.dart';

abstract class Employee implements Payable {
  final String firstName;
  final String lastName;
  final String socialSecurityNumber;

  Employee({
    required this.firstName,
    required this.lastName,
    required this.socialSecurityNumber
});
}