import 'package:flutter/foundation.dart';
import 'makeListTile.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String reason;

  Transaction(
      {@required this.id,
       @required this.title,
       @required this.amount,
       @required this.date,
       @required this.reason});
}
