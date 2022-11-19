import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  final String routeNames;

  AppBarIcons(this.routeNames);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, routeNames);
        },
        icon: const Icon(
          Icons.search,
          size: 25.0,
        ));
  }
}
