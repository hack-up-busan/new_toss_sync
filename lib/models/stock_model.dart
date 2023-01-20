import 'package:cloud_firestore/cloud_firestore.dart';

class Stock {
  late String id;//문서 ID
  late String stockName;
  late int price;
  Stock({
    required this.id,
    required this.stockName,
    required this.price,
  });
  //파이어 베이스에서 제공하는 패키지인 documentSnapshot을 이용해서 데이터를 가져올 수 있음
  //json형태로 가져오기 위해 Map<String, dynamic>을 사용
  Stock.fromSnapshot(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    id = snapshot.id;
    stockName = data['name'];
    price = data['price'];
  }
}