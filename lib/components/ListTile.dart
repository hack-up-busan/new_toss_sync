import 'package:flutter/material.dart';

class tile_arrowIcon extends StatelessWidget {
  const tile_arrowIcon({Key? key, required this.nickname, required this.word, required this.img}) : super(key: key);
  final String nickname;
  final String word;
  final String img;
  //final String date;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/$img.png'),
        radius: 24.0,
      ),
      trailing: IconButton(
        iconSize: 13,
        color: Colors.grey[600],
        icon: const Icon(Icons.arrow_forward_ios_rounded),
        onPressed: () { },
      ),
      title: Text(
        nickname,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        word,
        style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
