import 'package:flutter/material.dart';
import 'package:toss_assemble/components/black_divider.dart';
import 'components/TodayDiscovered/cardbox.dart';
import 'components/TodayDiscovered/community.dart';
import 'components/TodayDiscovered/hori_scroll.dart';
import 'mini_tabbar.dart';
import 'package:toss_assemble/components/TodayDiscovered/following_buy.dart';
import 'package:toss_assemble/components/feedback_docs.dart';
import 'package:toss_assemble/components/constants.dart';

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
            const SizedBox(
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
            const FollowBuyContents(),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 180,
              child: HoriScroll(
                investor: ['빌게이츠', '워렌버핏', '켄그리핀', '짐사이먼스'],
              ),
            ),
            BlackDivider(),
            Container(
              height: 300,
              decoration: BoxDecoration(color: Colors.white),
            ),
            BlackDivider(),
            Container(
              height: 300,
              decoration: BoxDecoration(color: Colors.white),
            ),
            BlackDivider(),
            Container(
              height: 701,
              //padding: EdgeInsets.only(top: 20, left: 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 10),
                    alignment: Alignment.centerLeft,
                    child: Text("인기 커뮤니티"),
                    height: 50,
                  ),
                  Container(
                    height: 600,
                    child: Column(
                      children: [
                        list_tile(),
                        Container(
                          padding: EdgeInsets.only(left: 60),
                          child: message_box(),
                        ),
                        SizedBox(height: 20),
                        list_tile(),
                        Container(
                          padding: EdgeInsets.only(left: 60),
                          child: message_box(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.1,
                    color: Colors.white,
                  ),
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("다른 커뮤니티 보기"),
                  ),
                ],
              ),
              //인기커뮤니티
            ),
            // const BlackDivider(),
            const SendOpinion(),
            const Divider(
              height: 1.0,
              color: const Color(0xFF18171D),
            ),
            const Docs(),
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
