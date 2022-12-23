import 'package:flutter/material.dart';
import 'package:toss_assemble/components/black_divider.dart';
import 'cardbox.dart';
import 'components/TodayDiscovered/hori_scroll.dart';
import 'mini_tabbar.dart';

class todayDiscoverys_test extends StatefulWidget {
  const todayDiscoverys_test({
    Key? key,
  }) : super(key: key);

  @override
  State<todayDiscoverys_test> createState() => _todayDiscoverys_testState();
}

class _todayDiscoverys_testState extends State<todayDiscoverys_test>
    with TickerProviderStateMixin {
  late TabController _minitabController = TabController(
    length: 5,
    vsync: this,
  );

  @override
  void initState() {
    _minitabController = TabController(
      length: 5,
      vsync: this, //vsync this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext, constraints) {
      return ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.05,
              ),
              Container(
                height: constraints.maxHeight * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // 같은 간격만큼 공간을 둠
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.45,
                      child: FilledCardExample(
                        countryFlagName: 'korea_flag',
                        boundary: '국내',
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth * 0.45,
                      child: FilledCardExample(
                        countryFlagName: 'america_flag',
                        boundary: '해외',
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                child: RealtimeCharText(),
              ),
              RealtimeTabs(minitabController: _minitabController),
              TabBarView(
                controller: _minitabController,
                children: const [
                  RealtimeChartlist(),
                  RealtimeChartlist(),
                  RealtimeChartlist(),
                  RealtimeChartlist(),
                  RealtimeChartlist(),
                ],
              ),
            ],
          ),
          BlackDivider(),
          Container(
            child: Column(
              children: [
                Container(
                  child: Text(
                    '주식천재 따라사기',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFEFEFF),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '먼저 부자가 된 그들의 선택은?',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF9E9DA3),
                    ),
                  ),
                ),
                Container(
                    height: 50.0,
                    child: HoriScroll(
                        investor: ["빌게이츠", "워렌버핏", "짐사이먼스", "켄그리핀"])),
              ],
            ),
          ),
        ],
      );
    });
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
