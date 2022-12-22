import 'package:flutter/material.dart';
import 'package:toss_assemble/stock_list.dart';
import 'hori_scroll.dart';

//import '../components/hori_scroll.dart';

class miniTabbar extends StatefulWidget {
  const miniTabbar({Key? key}) : super(key: key);

  @override
  _miniTabbarState createState() => _miniTabbarState();
}

class _miniTabbarState extends State<miniTabbar> with TickerProviderStateMixin {
  late TabController _minitabController;

  @override
  void initState() {
    _minitabController = TabController(
      length: 5,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
                color: Color(0xFF18171D)),
            child: TabBar(
              tabs: [
                Container(
                  height: 25,
                  alignment: Alignment.center,
                  child: Text(
                    '거래량',
                  ),
                ),
                Container(
                  height: 25,
                  alignment: Alignment.center,
                  child: Text(
                    '인기',
                  ),
                ),
                Container(
                  height: 25,
                  alignment: Alignment.center,
                  child: Text(
                    '급상승',
                  ),
                ),
                Container(
                  height: 25,
                  alignment: Alignment.center,
                  child: Text(
                    '급하락',
                  ),
                ),
                Container(
                  height: 25,
                  alignment: Alignment.center,
                  child: Text(
                    '관심',
                  ),
                ),
              ],
              /*indicator: BoxDecoration(
                  gradient: LinearGradient(  //배경 그라데이션 적용
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.blueAccent,
                      Colors.pinkAccent,
                    ],
                  ),
                ),*/
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              controller: _minitabController,
            ),
          ),
          Expanded(
            //Expanded에서 잠시 높이 설정
            //스크롤을 주려했으나 사이즈 설정에러
            //메인탭바스크롤, 미니탭바는 리스트(스크롤X)
            //height: 700, //화면맞게 크기 설정으로 바꾸기
            child: TabBarView(
              controller: _minitabController,
              children: [
                Container(
                  height: 1000,
                  color: Colors.black,
                  alignment: Alignment.center,
                  //child: horiScroll(), //나중에 가로스크롤 파일 추가
                  child: pageStock_list(),
                ),
                Container(
                  color: Colors.yellow[200],
                  alignment: Alignment.center,
                  child: Text(
                    '인기',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow[200],
                  alignment: Alignment.center,
                  child: Text(
                    '급상승',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow[200],
                  alignment: Alignment.center,
                  child: Text(
                    '급하락',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow[200],
                  alignment: Alignment.center,
                  child: Text(
                    '관심',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 200,
              child: HoriScroll(stocker: ["빌게이츠", "워렌버핏", "짐사이먼스", "켄그리핀"]))
        ],
      ),
    );
  }
}
