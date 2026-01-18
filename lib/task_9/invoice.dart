import 'package:geniric/task_9/payable_abstract.dart';

class Invoice implements Payable {
  final String partNumber;
  final String partDescription;
  final int quantity;
  final double pricePerItem;

  Invoice({
    required this.partNumber,
    required this.partDescription,
    required this.quantity,
    required this.pricePerItem,
});

  @override
  double getPaymentAmount() {
   return quantity * pricePerItem;
  }
}