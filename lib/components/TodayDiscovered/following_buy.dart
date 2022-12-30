import 'package:flutter/material.dart';

class FollowBuyContents extends StatelessWidget {
  const FollowBuyContents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10.0,
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Text(
                '주식천재 따라사기',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFEFEFF),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                '먼저 부자가 된 그들의 선택은?',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF9E9DA3),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
