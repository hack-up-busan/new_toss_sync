import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'stock_model.dart';

//CollectionReference -> 파이어스토어에 있는 컬렉션 객체
class StockProvider with ChangeNotifier {
  late CollectionReference stocksReference;
  List<Stock> stocks = [];

  StockProvider({reference}) {
    stocksReference = reference ?? FirebaseFirestore.instance.collection('stocks');
  }

  Future<void> fetchStocks() async {
    stocks = await stocksReference.get().then( (QuerySnapshot results) {
      return results.docs.map( (DocumentSnapshot document) {
        return Stock.fromSnapshot(document);
      }).toList();
    });
    notifyListeners();
  }
}