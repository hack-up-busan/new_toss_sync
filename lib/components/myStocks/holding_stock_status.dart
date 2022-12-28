import 'package:flutter/material.dart';
import 'package:toss_assemble/components/constants.dart';
import 'package:flutter/widgets.dart';

class CurrentMoney extends StatelessWidget {
  final double currentMoney;
  final String currentProfit;

  const CurrentMoney({required this.currentMoney, required this.currentProfit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: 20.0,
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
              width: 20.0,
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
              width: 160.0,
            ),
            const GoAllMyAsset('내 계좌 보기'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20.0,
            ),
            Text(
              currentProfit,
              style: const TextStyle(
                  color: Color(0xFF3E6FB2),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5),
            ),
          ],
        ),
      ],
    );
  }
}

class GoAllMyAsset extends StatelessWidget {
  final String name;
  const GoAllMyAsset(this.name);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: kContainerColour,
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            name,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[300],
            ),
          ),
        ),
      ),
    );
  }
}
