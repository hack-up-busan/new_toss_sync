import 'package:flutter/material.dart';

class BlackDivider extends StatelessWidget {
  const BlackDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 20.0,
      color: Colors.black,
      thickness: 15.0,
    );
  }
}
