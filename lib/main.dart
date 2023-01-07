import 'package:flutter/material.dart';
import 'package:toss_assemble/today_discovery_test.dart';
import 'screens/search_screen.dart';
import 'screens/setting_screen.dart';
import 'screens/calendar_screen.dart';
import 'screens/mystock.dart';
import 'appbar_icon.dart';
import 'battom_navigationbar.dart';
import 'components/constants.dart';
import 'package:toss_assemble/components/tabs.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(
              bodyText2:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          // scaffoldBackgroundColor: const Color.fromARGB(141, 0, 0, 0),
          scaffoldBackgroundColor: kAllThemeColour,
          appBarTheme: AppBarTheme(
            color: kAllThemeColour,
          ),
        ),
        routes: {
          '/settings': (context) => const SettingScreen(),
          '/calendars': (context) => const CalendarScreen(),
        },
        home: const StockPage(),
      ),
    );
  }
}

class StockPage extends StatefulWidget {
  const StockPage({super.key});
  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage>
    with SingleTickerProviderStateMixin {
  double _scrollPosition = 0;
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      actionsIconTheme: IconThemeData(
        color: Colors.grey[800],
      ),
      title: Opacity(
        opacity: _scrollPosition > 50 ? 1 : 0,
        child: Row(
          children: [
            Text(
              '코스피',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              '2,204.82',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800]),
            ),
          ],
        ),
      ),
      actions: const [
        SearchBtn(),
        AppBarIcons(
          routeNames: '/calendars',
          icon: Icons.check_box,
        ),
        AppBarIcons(routeNames: '/settings', icon: Icons.settings),
      ],
    );

    return Scaffold(
      appBar: appbar,
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          setState(() {
            _scrollPosition = notification.metrics.pixels;
          });
          return true;
        },
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: const FinancialInfo(),
                pinned: true,
                expandedHeight: 100.0,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                bottom: TabBar(
                  tabs: tabs,
                  indicatorColor: Colors.white,
                  indicatorWeight: 1.5,
                  controller: _tabController,
                ),
              ),
            ];
          },
          body: TabBarView(
            // These are the contents of the tab views, below the tabs.
            controller: _tabController,
            // These are the contents of the tab views, below the tabs.
            children: const <Widget>[
              MyStocks(),
              TodayDiscoveryTest(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        child: BottomNavigaitionBars(),
      ),
    );
  }
}
