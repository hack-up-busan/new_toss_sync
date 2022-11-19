import 'package:toss_assemble/transaction_list.dart';

import 'mystock.dart';
import 'today_discovery.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Transaction> transactions = [
    Transaction(name: '삼성전자', amount: 1, won: '1,740', yield: '+205(13.3)%'),
    Transaction(
        name: '테슬라', amount: 0.011814, won: '3,485', yield: '-899(20.5)%')
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actionsIconTheme: IconThemeData(color: Colors.grey[800]),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/search_screen');
                },
                icon: const Icon(
                  Icons.search,
                  size: 25.0,
                )),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/calendars');
              },
              icon: const Icon(Icons.check_box, size: 25.0),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              icon: const Icon(Icons.settings, size: 25.0),
            ),
          ],
          bottom: const TabBar(
              indicatorWeight: 3.0,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(
                    '내 주식',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    '오늘의 발견',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: [
          Column(
              children: transactions.map((tx) {
            return Card(
              child: Text(tx.name),
            );
          }).toList()),
          TodayDiscovery(),
        ]),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
            child: BottomNavigationBar(
                iconSize: 25.0,
                elevation: 5.0,
                currentIndex: 3,
                selectedIconTheme: const IconThemeData(color: Colors.white),
                selectedItemColor: Colors.white,
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.bold),
                unselectedIconTheme: IconThemeData(color: Colors.grey[600]),
                unselectedItemColor: Colors.grey[600],
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                showSelectedLabels: true,
                showUnselectedLabels: true,
                items: [
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: '홈',
                  ),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.diamond), label: '혜택'),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.attach_money_rounded), label: '송금'),
                  BottomNavigationBarItem(
                    icon: const Icon(Icons.factory_rounded),
                    label: '주식',
                    backgroundColor: Colors.grey[900],
                  ),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.density_medium), label: '전체')
                ]),
          ),
        ),
      ),
    );
  }
}
