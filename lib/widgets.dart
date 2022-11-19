import 'package:flutter/material.dart';

class TwotextButton extends StatelessWidget {
  final String name;

  const TwotextButton(this.name);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 15.0)),
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
      ),
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

class currentPriceButton extends StatelessWidget {
  final String name;
  const currentPriceButton(this.name);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.task_alt_rounded,
                color: Colors.grey[600],
                size: 22.0,
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                name,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 9.0,
              )
            ],
          ),
        )
      ],
    );
  }
}

class Nationality extends StatelessWidget {
  final String name;
  const Nationality(this.name);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0),
          child: Text(
            name,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class InvestStock extends StatelessWidget {
  final String stockName;
  final String image;
  final String stockNumbers;
  final String stockPrice;
  final String loss;

  const InvestStock(
      {super.key,
      required this.image,
      required this.loss,
      required this.stockName,
      required this.stockNumbers,
      required this.stockPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: ListTile(
        onTap: () {},
        trailing: Column(
          children: [
            Text('${stockPrice}원',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            Text(
              loss,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/$image'),
          radius: 24.0,
        ),
        title: Text(
          stockName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '${stockNumbers}주',
          style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class HoldStock extends StatelessWidget {
  final double money;
  const HoldStock(this.money);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(),
    );
  }
}

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
            width: 10.0,
          ),
          Text(
            '보유 주식',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
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
                fontSize: 30.0,
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
              width: 145.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[800],
              ),
              child: GoAllaseets('총 자산 보기'),
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

class InterestingStockList extends StatelessWidget {
  const InterestingStockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(1.0, 15.0, 1.0, 0.0),
      color: Colors.grey[900],
      child: Column(
        children: [
          ListTile(
            leading: Text(
              '관심 주식',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            trailing: TextButton(
              onPressed: () {},
              child: Text(
                '편집하기',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: ListTile(
              leading: Text(
                '기본',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
              trailing: Icon(
                Icons.arrow_downward_rounded,
                size: 20.0,
                color: Colors.grey[400],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DemandStock extends StatelessWidget {
  const DemandStock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40.0),
      color: Colors.grey[900],
      child: Row(
        children: [
          SizedBox(width: 10.0),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    '지금 빠르게 오르고 있는 주식은?',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '실시간 급상승 주식 보기',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[600]),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(
              Icons.factory_rounded,
              size: 60.0,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(width: 20.0),
        ],
      ),
    );
  }
}

class SendOpinion extends StatelessWidget {
  const SendOpinion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 15.0, 5.0, 5.0),
      child: Card(
        color: Colors.black,
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

class verticalDivider extends StatelessWidget {
  const verticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      width: 1.0,
      thickness: 3.0,
      color: Colors.grey[700],
    );
  }
}
