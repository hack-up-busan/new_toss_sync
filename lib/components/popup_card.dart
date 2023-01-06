import 'package:flutter/material.dart';

class CardElement {
  const CardElement(this.title, this.icon);
  final String title;
  final IconData icon;
}

class CastList extends StatefulWidget {
  @override
  State<CastList> createState() => _CastListState();
}

class _CastListState extends State<CastList> {
  final List<CardElement> _cast = <CardElement>[
    const CardElement('관심주식이 새로워졌어요', Icons.monitor_heart),
  ];

  Iterable<Widget> get CardWidgets {
    return _cast.map((CardElement card) {
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Chip(
          avatar: CircleAvatar(
            child: Icon(card.icon),
          ),
          label: Text(card.title),
          onDeleted: () {
            setState(() {
              _cast.removeWhere(
                (CardElement entry) {
                  return entry.title == card.title;
                },
              );
            });
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: CardWidgets.toList(),
    );
  }
}
