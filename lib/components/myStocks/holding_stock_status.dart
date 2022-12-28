import 'package:flutter/material.dart';
import 'package:toss_assemble/components/constants.dart';
import 'package:flutter/widgets.dart';

class CurrentMoney extends StatelessWidget {
  final double currentMoney;
  final String currentProfit;

  const CurrentMoney({required this.currentMoney, required this.currentProfit});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: 10.0,
          ),
          Text(
            '보유 주식',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.0),
          ),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 10.0,
            ),
            Text(
              '${currentMoney}원',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios_sharp),
              color: Colors.white,
              onPressed: () {},
              iconSize: 15.0,
            ),
            SizedBox(
              width: screenWidth > 500 ? 160.0 : 120.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: kContainerColour,
              ),
              child: GoAllaseets('내 계좌 보기'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 10.0,
            ),
            Text(
              currentProfit,
              style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5),
            ),
          ],
        ),
      ],
    );
  }
}

class GoAllaseets extends StatelessWidget {
  final String name;
  GoAllaseets(this.name);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        name,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey[300],
        ),
      ),
    );
  }
}
