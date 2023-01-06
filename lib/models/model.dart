import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:toss_assemble/components/myStocks/popping_card.dart';

class Stock {
  // final 전달받은 데이터에 따라 각각 다른 주식카드가 생성될것이므로 런타임시 변하지않는 상수
  final String name;
  final String imgPath;
  final String addPerson;
//final String addButton;

  Stock(this.name, this.imgPath, this.addPerson);
//this.addButton
}

// final List<PoppingCard> cards = [
//    PoppingCard(title: 'text', removeCard: Provider.of<CardModel>(context, listen: false).removeAll(),),
// ];
//
// class CardModel extends ChangeNotifier {
//   VoidCallback removeAll() {
//     cards.clear();
//     notifyListeners();
//   }
// }
