import 'package:flutter/material.dart';

import 'cardbox.dart';
import 'components/TodayDiscovered/hori_scroll.dart';
import 'mini_tabbar.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(
          'TabPage',
        ),
      ),*/
      body: Container(
        //padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  ),
                  color: Colors.black),
              child: TabBar(
                tabs: [
                  Container(
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      '내 주식',
                    ),
                  ),
                  Container(
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      '오늘의 발견',
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
                controller: _tabController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    color: Colors.yellow[200],
                    alignment: Alignment.center,
                    child: Text(
                      'Tab1 View',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  todayDiscoverys_test(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class todayDiscoverys_test extends StatelessWidget {
  const todayDiscoverys_test({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      //스크롤
      children: [
        Container(
          height: 600,
          child: Column(
            children: [
              //Container(height: 100,),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, left: 10.0, right: 10.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // 같은 간격만큼 공간을 둠
                  children: const [
                    FilledCardExample(
                      countryFlagName: 'korea_flag',
                      boundary: '국내',
                    ),
                    FilledCardExample(
                      countryFlagName: 'america_flag',
                      boundary: '해외',
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 12.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "실시간 차트",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const Expanded(
                  //height: 200,
                  child: miniTabbar()),
              //나중에 가로스크롤 파일 추가
            ],
          ),
        ),
      ],
      //color: Colors.black,
      //alignment: Alignment.center,
    );
  }
}
