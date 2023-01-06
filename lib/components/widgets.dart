import 'package:flutter/material.dart';
import 'constants.dart';

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
      color: const Color(0xFF18171D),
      child: ListTile(
        onTap: () {},
        trailing: Column(
          children: [
            Text('$stockPrice원',
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
          '$stockNumbers주',
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
  const HoldStock(this.money, {super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(),
    );
  }
}

class InterestingStockList extends StatefulWidget {
  const InterestingStockList({Key? key}) : super(key: key);

  @override
  State<InterestingStockList> createState() => _InterestingStockListState();
}

class _InterestingStockListState extends State<InterestingStockList> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(1.0, 15.0, 1.0, 0.0),
      color: const Color(0xFF18171D),
      child: Column(
        children: [
          ListTile(
            leading: const Text(
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
          ExpansionTile(
            title: const Text(
              '기본',
              style: TextStyle(color: Colors.white),
            ),
            iconColor: Colors.grey,
            collapsedIconColor: Colors.grey,
            children: [
              const InvestStock(
                image: 'samsung.png',
                stockName: '삼성전자',
                stockNumbers: '1',
                stockPrice: '1,475',
                loss: '-60(3.9%)',
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade600,
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    '추가하기',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  )
                ],
              ),
            ],
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
      color: const Color(0xFF18171D),
      child: Row(
        children: [
          SizedBox(width: 10.0),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
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
          const Expanded(
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
