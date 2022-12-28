import 'package:flutter/material.dart';
import 'package:toss_assemble/components/constants.dart';

class HoriScroll extends StatelessWidget {
  const HoriScroll({Key? key, required this.investor}) : super(key: key);
  final List<String> investor;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 5,
        );
      },
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: investor.length,
      itemBuilder: (ctx, i) => (PersonCircle(img: investor[i])),
    );
  }
}

class PersonCircle extends StatelessWidget {
  const PersonCircle({Key? key, required this.img}) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/$img.png"),
          ),
          const SizedBox(height: 15.0),
          Text(
            img,
            style: kInvestorNameTextStyle,
          ),
        ],
      ),
    );
  }
}
