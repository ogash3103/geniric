import 'package:geniric/task_9/base_plus_commisssion_employeee.dart';
import 'package:geniric/task_9/hourly_employee.dart';
import 'package:geniric/task_9/invoice.dart';
import 'package:geniric/task_9/payable_abstract.dart';
import 'package:geniric/task_9/salary.dart';

void main() {
  List<Payable> payables = [
    Invoice(
        partNumber: 'A1',
        partDescription: 'Keyboard',
        quantity: 2,
        pricePerItem: 50
    ),
    SalariedEmployee(
        firstName: "Abbos",
        lastName: "Rustamov",
        socialSecurityNumber: '111',
        weeklySalary: 900
    ),
    HourlyEmployee(
        firstName: "Hasan",
        lastName: "Aliyev",
        socialSecurityNumber: '222',
        wage: 20,
        hours: 45
    ),
    BasePlusCommissionEmployee(
        firstName: 'Olim',
        lastName: "Karimov",
        socialSecurityNumber: '333',
        grossSales: 6000,
        commissionRate: 0.9,
        baseSalary: 300
    ),
  ];

  for(final p in payables) {
    print('payment: ${p.getPaymentAmount()}');
  }
}