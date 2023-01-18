import 'package:flutter/material.dart';
import 'package:toss_assemble/models/like_model.dart';
import '../../models/model.dart';
import '../constants.dart';

import 'package:provider/provider.dart';
import '../../models/stock_model_provider.dart';


class StockListPage extends StatelessWidget{
  //List<bool> _isLiked = List.filled(stockName.length, false);

  @override
  Widget build(BuildContext context) {
    final likeProvider = Provider.of<LikeProvider>(context);
    final stockProvider = Provider.of<StockProvider>(context); //Stock모델 인스턴스에 접근
    //create: (_) => StockProvider(),
    return FutureBuilder(
      future: stockProvider.fetchStocks(),
      builder: (context, snapshots) {
        if (stockProvider.stocks.length == 0) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else {
          return ListView.builder(
            itemCount: stockProvider.stocks.length,
            itemBuilder: (context, index) {
              final words = stockProvider.stocks[index].stockName;
              final word = words[index];
              return Card(
                color: kRealTimeStockBackgroundColour,
                elevation: 0.0,
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.zero
                ),
                child: ListTile(
                  title: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Image.network(stockProvider.stocks[index].imgPath),
                          Text(
                            stockProvider.stocks[index].stockName,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                          Text(
                            stockProvider.stocks[index].price.toString() + '원',
                            style: const TextStyle(color: Color(0xFFD1D1E0), fontSize: 13.0),
                          ),
                        ],
                      ),
                      SizedBox(width: 160),
                      Text(
                        stockProvider.number.toString() + '개',
                        style: const TextStyle(color: Color(0xFFD1D1E0), fontSize: 13.0),
                      ),
                    ],
                  ),
                  /*leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network(stockProvider.stocks[index].imgPath),
                  ),*/
                  // Modify the heart icon to change between a filled and an empty heart
                  // based on the value of _isLiked[index]
                  /*trailing: IconButton(
                    onPressed: () {
                      stockProvider.plusNumber();
                    },
                    icon: Icon(Icons.library_add,
                    color: Color(0xFFD1D1E0)),
                  ),*///개수
                  trailing: IconButton(
                    onPressed: () {
                      likeProvider.toggleLike(word);
                    },
                    icon: likeProvider.isLiked(word)
                      ? const Icon(Icons.favorite, color: Colors.red,) : const Icon(Icons.favorite_border)
                  ),

                  /*trailing: IconButton(
                    icon: _isLiked[index]
                        ? const Icon(Icons.favorite, color: Colors.red)
                        : const Icon(Icons.favorite_border),
                    onPressed: () {
                      setState(() {
                        _isLiked[index] = !_isLiked[index];
                      });
                    },
                  ),*/ //추후에 provider로 재구현
                ),
              );
            },
          );
        }
      },
    );
  }
}