import 'package:flutter/material.dart';

class BottomNavigaitionBars extends StatelessWidget {
  const BottomNavigaitionBars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 25.0,
        elevation: 5.0,
        currentIndex: 3,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
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
          const BottomNavigationBarItem(icon: Icon(Icons.diamond), label: '혜택'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_rounded), label: '송금'),
          BottomNavigationBarItem(
            icon: const Icon(Icons.factory_rounded),
            label: '주식',
            backgroundColor: Colors.grey[900],
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.density_medium), label: '전체')
        ]);
  }
}
