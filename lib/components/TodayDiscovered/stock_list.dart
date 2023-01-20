import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:provider/provider.dart';
import '../../models/stock_model_provider.dart';


class StockListPage extends StatelessWidget{
  //List<bool> _isLiked = List.filled(stockName.length, false);

  @override
  Widget build(BuildContext context) {
    final stockProvider = Provider.of<StockProvider>(context);
    //create: (_) => StockProvider(),
    return FutureBuilder(
      future: stockProvider.fetchStocks(),
      builder: (context, snapshots) {
        if (stockProvider.stocks.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        else {

          return ListView.builder(
            itemCount: stockProvider.stocks.length,
            itemBuilder: (context, index) {
              return Card(
                color: kRealTimeStockBackgroundColour,
                elevation: 0.0,
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.zero
                ),
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/${stockProvider.stocks[index].stockName}.png'),
                        radius: 20,
                      ),

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
                            '${stockProvider.stocks[index].price}원',
                            style: const TextStyle(color: Color(0xFFD1D1E0), fontSize: 13.0),
                          ),
                        ],
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