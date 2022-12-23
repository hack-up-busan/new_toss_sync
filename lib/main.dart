import 'package:flutter/material.dart';
import 'package:toss_assemble/tabbar.dart';
import 'screens/search_screen.dart';
import 'screens/setting_screen.dart';
import 'screens/calendar_screen.dart';
import 'transaction_list.dart';
//import 'screens/today_discovery.dart';
import 'screens/mystock.dart';
import 'appbar_icon.dart';
import 'battom_navigationbar.dart';
import 'components/myStocks/popping_card.dart';
//import 'tabs.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
            bodyText2:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        //scaffoldBackgroundColor: const Color.fromARGB(141, 0, 0, 0),
        scaffoldBackgroundColor: kAllThemeColour,
        appBarTheme: AppBarTheme(
          color: kAllThemeColour,
        ),
      ),
      routes: {
        '/search_screen': (context) => SearchScreen('검색창'),
        '/settings': (context) => const SettingScreen(),
        '/calendars': (context) => const CalendarScreen(),
      },
      home: const StockPage(),
    );
  }
}

class StockPage extends StatefulWidget {
  const StockPage({super.key});
  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  List<Transaction> transactions = [
    Transaction(name: '삼성전자', amount: 1, won: '1,740', yield: '+205(13.3)%'),
    Transaction(
        name: '테슬라', amount: 0.011814, won: '3,485', yield: '-899(20.5)%')
  ];

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      actionsIconTheme: IconThemeData(color: Colors.grey[800]),
      actions: const [
        AppBarIcons(
          routeNames: '/search_screen',
          icon: Icons.search,
        ),
        AppBarIcons(
          routeNames: '/calendars',
          icon: Icons.check_box,
        ),
        AppBarIcons(routeNames: '/settings', icon: Icons.settings),
      ],
    );

    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: appbar,
        body: Column(
          children: [
            Container(
                height: (MediaQuery.of(context).size.height -
                        appbar.preferredSize.height -
                        MediaQuery.of(context).padding.top) *
                    0.07,
                child: FinancialInfo()),
            Container(
              height: (MediaQuery.of(context).size.height -
                      appbar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.07,
              child: TabBar(
                tabs: myTabs,
                indicatorColor: Colors.white,
                indicatorWeight: 1.5,
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                      appbar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.76,
              child: const TabBarView(children: [
                MyStocks(),
                todayDiscoverys_test(),
              ]),
            ),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          child: BottomNavigaitionBars(),
        ),
      ),
    );
  }
}
