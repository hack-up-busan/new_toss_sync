import 'package:flutter/material.dart';
import '../components/constants.dart';
import 'package:search_page/search_page.dart';
import '../models/search_screen_stock_list.dart';

class SearchBtn extends StatelessWidget {
  const SearchBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showSearch(
          context: context,
          delegate: SearchPage<Stocks>(
            items: stocks,
            searchLabel: '\'에어팟\'을 검색해보세요',
            suggestion: const PreferredStockList(stocks: stocks),
            // failure: const Center(
            //   child: Text('No person found :('),
            // ),
            filter: (stock) => [
              stock.stockName,
              stock.rank.toString(),
              stock.rate.toString(),
            ],
            sort: (a, b) => a.compareTo(b),
            builder: (stock) => ListTile(
              title: Text(stock.stockName),
              leading: Text('${stock.rank}'),
              trailing: Text('${stock.rate}'),
            ),
          ),
        );
      },
      icon: const Icon(
        Icons.search,
        size: 35.0,
      ),

    );
  }
}

class PreferredStockList extends StatelessWidget {
  const PreferredStockList({
    Key? key,
    required this.stocks,
  }) : super(key: key);

  final List<Stocks> stocks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stocks.length,
      itemBuilder: (context, index) {
        final stock = stocks[index];

        return ListTile(
          leading: Text(
            '${stock.rank}',
            style: const TextStyle(
              fontSize: 18.0,
              color: Color(0xFF939298),
            ),
          ),
          title: Text(
            stock.stockName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Color(0xFFC0BFC5),
            ),
          ),
          trailing: Text(
            stock.rate >= 0.0 ? '+${stock.rate}%' : '${stock.rate}%',
            style: TextStyle(
                fontSize: 17.0,
                color: stock.rate >= 0.0
                    ? kStockRatePlusColour
                    : kStockRateMinusColour),
          ),
        );
      },

      body: const Text('내용'),

    );
  }
}
