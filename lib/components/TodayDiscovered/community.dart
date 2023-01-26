import 'package:flutter/material.dart';

class list_tile extends StatefulWidget {
  const list_tile({Key? key}) : super(key: key);

  @override
  State<list_tile> createState() => _list_tileState();
}

class _list_tileState extends State<list_tile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/빌게이츠.png'),
        radius: 24.0,
      ),
      title: const Text(
        'TSLS',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        '63,090원',
        style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}


class message_box extends StatefulWidget {
  const message_box({Key? key}) : super(key: key);

  @override
  State<message_box> createState() => _message_boxState();
}

class _message_boxState extends State<message_box> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints(
        maxWidth: screenWidth * 0.75, //전체 스크린 크기의 0.75배가 최대 크기
        maxHeight: screenHeight / 4 //메시지가 길어져도 오버플로우 발생X ->메시지가 잘리는건 해결못함
      ),
      //margin: EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: const Text(
        '메세지 내용이 늘어나면 박스크기도 늘어나는데 세로는 무한정늘어나다가 오버플로우 발생 aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa메세지 내용이 늘어나면 박스크기도 늘어나는데 세로는 무한정늘어나다가 오버플로우 발생 aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
