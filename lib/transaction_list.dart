import 'package:flutter/foundation.dart';

class Transaction {
  final String name;
  String won;
  double amount;
  String yield;

  Transaction({
    required this.name,
    required this.amount,
    required this.won,
    required this.yield,
  });
}
