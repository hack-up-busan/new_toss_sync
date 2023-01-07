// ignore: implementation_imports

import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  final String title;
  SearchScreen(@required this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text('내용'),
    );
  }
}
