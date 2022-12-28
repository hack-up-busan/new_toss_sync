import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  final String routeNames;
  final IconData icon;

  const AppBarIcons({super.key, required this.routeNames, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamed(context, routeNames);
      },
      icon: Icon(
        icon,
        size: 30.0,
      ),
    );
  }
}
