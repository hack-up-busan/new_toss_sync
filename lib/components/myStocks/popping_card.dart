import 'package:flutter/material.dart';
import 'package:popup_card/popup_card.dart';
import 'package:provider/provider.dart';
import 'package:toss_assemble/components/constants.dart';
import 'package:toss_assemble/models/model.dart';

class PoppingCard extends StatelessWidget {
  final String title;
  // final VoidCallback removeCard;

  const PoppingCard({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 300.0,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.fromLTRB(20.0, 10, 10, 10),
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 0, 10, 0),
                child: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 30.0,
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '관심주식 편집이 새로워졌어요',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                    Text(
                      '써보기',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// class testLisTtile extends StatelessWidget {
//   final String title;
//   final VoidCallback removeCard;
//
//   testLisTtile({required this.title, required this.removeCard});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       tileColor: kAllThemeColour,
//       title: Text(title),
//       trailing: IconButton(
//         onPressed: removeCard,
//         icon: Icon(Icons.delete),
//       ),
//     );
//   }
// }
