class Stocks implements Comparable<Stocks> {
  final int rank;
  final double rate;
  final String stockName;

  const Stocks(this.stockName, this.rank, this.rate);

  @override
  int compareTo(Stocks other) => stockName.compareTo(other.stockName);
}

const stocks = [
  Stocks('삼성전자', 1, -18.3),
  Stocks('LG 에너지 솔루션', 2, -9.7),
  Stocks('테슬라', 3, 0.4),
  Stocks('SK 하이닉스', 4, 9.5),
  Stocks('Facebook', 5, 5.7),
];