import 'package:flutter/material.dart';

final List<Tab> myTabs = [
  const Tab(
    child: const Text('내 주식',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white)),
  ),
  const Tab(
    child: const Text('오늘의 발견',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white)),
  ),
];
