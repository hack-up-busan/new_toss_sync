import 'package:flutter/material.dart';

class SendOpinion extends StatelessWidget {
  const SendOpinion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.fromLTRB(0.0, 15.0, 5.0, 5.0),
      child: ListTile(
        onTap: () {},
        leading: Icon(
          Icons.email_rounded,
          color: Colors.blue[400],
          size: 40.0,
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2.0),
          child: Text(
            '지금까지 토스증권 어땠나요?',
            style: TextStyle(
              color: Colors.grey[400],
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
        subtitle: Text(
          '의견 보내기',
          style: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_sharp,
          color: Colors.grey[700],
          size: 15.0,
        ),
      ),
    );
  }
}

class Docs extends StatelessWidget {
  const Docs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 1.0, 3.0, 0.0),
                child: CircleAvatar(
                    radius: 10.0,
                    backgroundImage: AssetImage('assets/images/toss.png')),
              ),
              Text(
                '토스증권',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '토스증권에서 제공하는 투자 정보는 고객의 투자 판단을 위해 단순',
                style: TextStyle(color: Colors.grey[800], fontSize: 12.0),
              ),
              Text(
                '참고용일뿐, 투자 제안 및 권유 종목 추천을 위해 작성된 것이 아닙니다.',
                style: TextStyle(color: Colors.grey[800], fontSize: 12.0),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  CautiousInfo('고객센터'),
                  CautiousInfo('투자 유의 사항'),
                  CautiousInfo('개인정보처리방침'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  CautiousInfo('이용자권리 및 유의사항'),
                  CautiousInfo('신용정보 활용체제'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CautiousInfo extends StatelessWidget {
  final String info;
  const CautiousInfo(this.info);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.black, padding: EdgeInsets.all(3.0)),
        onPressed: () {},
        child: Text(
          info,
          style: TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ),
    );
  }
}
