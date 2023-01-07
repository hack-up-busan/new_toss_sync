import 'package:flutter/material.dart';
import 'package:toss_assemble/components/TodayDiscovered/stock_list.dart';
import 'components/TodayDiscovered/hori_scroll.dart';

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
    return Column(
      children: [
        Container(
          height: 30.0,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
            color: Color(0xFF18171D),
          ),
          child: TabBar(
            tabs: const [
              miniTabs(
                label: '거래량',
              ),
              miniTabs(
                label: '인기',
              ),
              miniTabs(
                label: '급상승',
              ),
              miniTabs(
                label: '급하락',
              ),
              miniTabs(
                label: '관심',
              ),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            controller: _minitabController,
          ),
        ),
        Container(
          height: 400,
          //Expanded에서 잠시 높이 설정
          //스크롤을 주려했으나 사이즈 설정에러
          //메인탭바스크롤, 미니탭바는 리스트(스크롤X)
          //height: 700, //화면맞게 크기 설정으로 바꾸기
          child: TabBarView(
            controller: _minitabController,
            children: const [
              RealtimeChartlist(),
              RealtimeChartlist(),
              RealtimeChartlist(),
              RealtimeChartlist(),
              RealtimeChartlist(),
            ],
          ),
        ),
      ],
    );
  }
}

class RealtimeTabs extends StatefulWidget {
  @override
  State<RealtimeTabs> createState() => _RealtimeTabsState();
}

class _RealtimeTabsState extends State<RealtimeTabs> {
  late TabController _minitabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
        color: Color(0xFF18171D),
      ),
      child: TabBar(
        tabs: const [
          miniTabs(
            label: '인기',
          ),
          miniTabs(
            label: '거래량',
          ),
          miniTabs(
            label: '급상승',
          ),
          miniTabs(
            label: '급하락',
          ),
          miniTabs(
            label: '관심',
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
    );
  }
}

class RealtimeChartlist extends StatelessWidget {
  const RealtimeChartlist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      //child: horiScroll(), //나중에 가로스크롤 파일 추가
      child: const pageStock_list(),
    );
  }
}

class miniTabs extends StatelessWidget {
  final String label;

  const miniTabs({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 25,
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class RealtimeCharText extends StatelessWidget {
  const RealtimeCharText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(
            width: 15.0,
          ),
          Text(
            "실시간 차트",
            style: TextStyle(color: Color(0xFFFEFEFF), fontSize: 20),
          ),
        ],
      ),
    );
  }
}
