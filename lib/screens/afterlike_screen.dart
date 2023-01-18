import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/constants.dart';
import '../models/like_model.dart';
import '../models/stock_model_provider.dart';

class LikePage extends StatelessWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stockProvider = Provider.of<StockProvider>(context);
    final likeProvider = Provider.of<LikeProvider>(context);
    final words = likeProvider.words;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Like'),
      ),
      body: ListView.builder(
        itemCount: stockProvider.stocks.length,
        itemBuilder: (context, index) {
          List<String> _wordList = [];
          bool _isLiked = false;

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
                    if(!_isLiked) {
                      _wordList.add(words);
                      _isLiked = true;
                    }
                    likeProvider.toggleLike(word);
                    print(_wordList);
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
      ),
    );
  }
}
