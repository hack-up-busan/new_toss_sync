import 'package:flutter/material.dart';
import '../../models/model.dart';
import '../constants.dart';

class pageStock_list extends StatefulWidget {
  const pageStock_list({Key? key}) : super(key: key);

  @override
  State<pageStock_list> createState() => _pageStock_listState();
}

class _pageStock_listState extends State<pageStock_list> {
  static List<String> stockName = [
    //주식이름 리스트 문자열 변수
    '삼성전자', '카카오', 'NAVER', 'SK하이닉스', '현대차', 'LG화학',
    '대한항공', '셀트리온', '삼성바이오로직스', 'LG전자'
  ];

  static List<String> stockImgPath = [
    //주식이름 리스트 문자열 변수
    //사진경로 넣기, yaml파일에도
    /*'image/bear.png', 'image/fox.png', 'image/deer.png', 'image/camel.png', 'image/tiger.png',
    'image/lion.png', 'image/koala.png', 'image/kangaroo.png', 'image/back.png', 'image/red.jpg'*/
    'assets/images/삼성.png',
    'assets/images/kakaotalk.png',
    'assets/images/네이버.png',
    'assets/images/sk하이닉스.png',
    'assets/images/현대.png',
    'assets/images/LG화학.png',
    'assets/images/대한항공.png',
    'assets/images/셀트리온.png',
    'assets/images/삼성바이오로직스.png',
    'assets/images/LG전자.png'
  ];

  static List<String> stockAddPerson = [
    //주식이름 리스트 문자열 변수
    //몇명추가 넣기->명수는 변수로하고 추가부분만 텍스트로?
    '1,324,634명 추가', '1,324,634명 추가', '1,324,634명 추가', '1,324,634명 추가',
    '1,324,634명 추가',
    '1,324,634명 추가', '1,324,634명 추가', '1,324,634명 추가', '1,324,634명 추가',
    '1,324,634명 추가'
  ];

  /*static List<String> stockAddButton = [ //주식이름 리스트 문자열 변수
  //버튼은 리스트로 넣어지려나? 객체생성후 위에 콘테이너로?
    //버튼아이콘은 잇음
  ];*/

  final List<Stock> stockData = List.generate(
      stockName.length,
          (index) => //길이만큼 오름차순 호출
      Stock(stockName[index], stockImgPath[index],
          stockAddPerson[index])); //주식데이터전달
  //bool _isLiked = false; // Track the state of the heart icon
  List<bool> _isLiked = List.filled(stockName.length, false);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stockName.length,
      itemBuilder: (context, index) {
        return Card(
          color: kRealTimeStockBackgroundColour,
          elevation: 0.0,
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.zero
          ),
          child: ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stockData[index].name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),

                Text(
                  stockData[index].addPerson,
                  style: const TextStyle(color: Color(0xFFD1D1E0), fontSize: 13.0),
                ),
              ],
            ),
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(stockData[index].imgPath),
            ),
            // Modify the heart icon to change between a filled and an empty heart
            // based on the value of _isLiked[index]
            trailing: IconButton(
              icon: _isLiked[index]
                  ? const Icon(Icons.favorite, color: Colors.red)
                  : const Icon(Icons.favorite_border),
              onPressed: () {
                setState(() {
                  _isLiked[index] = !_isLiked[index];
                });
              },
            ),
          ),
        );
      },
    );
  }
}
