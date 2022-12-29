import 'package:flutter/material.dart';
import '../components/widgets.dart';
import 'package:toss_assemble/components/myStocks/holding_stock_status.dart';
import 'package:toss_assemble/components/feedback_docs.dart';
import 'package:toss_assemble/components/black_divider.dart';

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
        children: [
          const SizedBox(
            height: 25.0,
          ),
          CurrentMoney(
            currentMoney: 5463,
            currentProfit: '-455원 (7.7%)',
          ),
          const SizedBox(
            height: 10.0,
          ),
          const currentPriceButton('현재가'),
          const Nationality('국내'),
          const InvestStock(
            image: 'samsung.png',
            stockName: '삼성전자',
            stockNumbers: '1',
            stockPrice: '1,475',
            loss: '-60(3.9%)',
          ),
          const SizedBox(
            height: 2.0,
          ),
          const Nationality('해외'),
          const InvestStock(
              image: 'tesla.png',
              loss: '-210(4.7&)',
              stockName: '테슬라',
              stockNumbers: '0.011814',
              stockPrice: '4,174'),
          const BlackDivider(),
        ],
      ),
      const InterestingStockList(),
      const BlackDivider(),
      const DemandStock(),
      const SendOpinion(),
      const Divider(
        height: 1.0,
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
