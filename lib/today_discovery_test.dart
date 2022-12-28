import 'package:flutter/material.dart';
import 'package:toss_assemble/components/black_divider.dart';
import 'components/TodayDiscovered/cardbox.dart';
import 'components/TodayDiscovered/hori_scroll.dart';
import 'mini_tabbar.dart';

class todayDiscoverys_test extends StatefulWidget {
  @override
  State<todayDiscoverys_test> createState() => _todayDiscoverys_testState();
}

class _todayDiscoverys_testState extends State<todayDiscoverys_test>
    with TickerProviderStateMixin {
  late TabController _minitabController;

  @override
  void initState() {
    _minitabController = TabController(
      length: 5,
      vsync: this, //vsync this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  void dispose() {
    _minitabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> labels = [];
    for (int i = 0; i <= 50; i++) {
      labels.add(Text(i.toString()));
    }

    return ListView(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.43,
                  child: FilledCardExample(
                    countryFlagName: 'korea_flag',
                    boundary: '국내',
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.43,
                  child: FilledCardExample(
                    countryFlagName: 'america_flag',
                    boundary: '해외',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: RealtimeCharText(),
            ),
            miniTabbar(),
            BlackDivider(),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text(
                        '주식천재 따라사기',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFEFEFF),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '먼저 부자가 된 그들의 선택은?',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9E9DA3),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 300,
              child: HoriScroll(
                investor: ['빌게이츠', '워렌버핏', '켄그리핀', '짐사이먼스'],
              ),
            ),
          ],
        ),
      ],
      //color: Colors.black,
      //alignment: Alignment.center,
    );
    //스크롤
  }
}

// class TabPage extends StatefulWidget {
//   const TabPage({Key? key}) : super(key: key);
//
//   @override
//   _TabPageState createState() => _TabPageState();
// }
//
// class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     _tabController = TabController(
//       length: 2,
//       vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
//     );
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       /*appBar: AppBar(
//         title: Text(
//           'TabPage',
//         ),
//       ),*/
//       body: Container(
//         //padding: const EdgeInsets.only(top: 50),
//         child: Column(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                   border: Border(
//                     bottom: BorderSide(color: Colors.grey),
//                   ),
//                   color: Colors.black),
//               child: TabBar(
//                 tabs: [
//                   Container(
//                     height: 30,
//                     alignment: Alignment.center,
//                     child: Text(
//                       '내 주식',
//                     ),
//                   ),
//                   Container(
//                     height: 30,
//                     alignment: Alignment.center,
//                     child: Text(
//                       '오늘의 발견',
//                     ),
//                   ),
//                 ],
//                 /*indicator: BoxDecoration(
//                   gradient: LinearGradient(  //배경 그라데이션 적용
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                     colors: [
//                       Colors.blueAccent,
//                       Colors.pinkAccent,
//                     ],
//                   ),
//                 ),*/
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 controller: _tabController,
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 controller: _tabController,
//                 children: [
//                   Container(
//                     color: Colors.yellow[200],
//                     alignment: Alignment.center,
//                     child: Text(
//                       'Tab1 View',
//                       style: TextStyle(
//                         fontSize: 30,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
