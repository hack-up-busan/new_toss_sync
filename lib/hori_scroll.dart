import 'package:flutter/material.dart';

class HoriScroll extends StatelessWidget {
  const HoriScroll({Key? key, required this.stocker}) : super(key: key);
  final List<String> stocker;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 5,);
      },
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: stocker.length,
      itemBuilder: (ctx, i) => (
          PersonCircle(img: stocker[i])
      ),

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
            radius: 70,
            backgroundImage: AssetImage("assets/images/$img.png"),
          ),
          const SizedBox(height: 5),
          Text(img)
        ],
      ),
    );
  }
}