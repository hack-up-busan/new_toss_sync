import 'package:flutter/material.dart';
import '../widgets.dart';

class MyStocks extends StatefulWidget {
  const MyStocks({Key? key}) : super(key: key);

  @override
  State<MyStocks> createState() => _MyStocksState();
}

class _MyStocksState extends State<MyStocks> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: const [
          CurrentMoney(
            currentMoney: 5.463,
            currentProfit: '-455원 (7.7%)',
          ),
          SizedBox(
            height: 10.0,
          ),
          currentPriceButton('현재가'),
          Nationality('국내'),
          InvestStock(
            image: 'samsung.png',
            stockName: '삼성전자',
            stockNumbers: '1',
            stockPrice: '1,475',
            loss: '-60(3.9%)',
          ),
          SizedBox(
            height: 2.0,
          ),
          Nationality('해외'),
          InvestStock(
              image: 'tesla.png',
              loss: '-210(4.7&)',
              stockName: '테슬라',
              stockNumbers: '0.011814',
              stockPrice: '4,174'),
          Divider(
            height: 20.0,
            color: Colors.black,
          ),
        ],
      ),
      const InterestingStockList(),
      const Divider(
        height: 20.0,
        color: Colors.black,
        thickness: 2.0,
      ),
      const DemandStock(),
      const SendOpinion(),
      Divider(
        height: 20.0,
        color: Colors.grey[100],
      ),
      const Docs(),
    ]);
    ;
  }
}

class FinancialInfo extends StatelessWidget {
  const FinancialInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
          child: const Text(
            '토스증권',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Text(
                '코스피',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600]),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                '2,204.82',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
