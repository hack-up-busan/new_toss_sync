import 'package:flutter/material.dart';
import 'components/constants.dart';

class cardBox extends StatelessWidget {
  const cardBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.only(top: 20.0),
        child: SizedBox(
          width: 100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.mail),
                title: Text('국내'),
                subtitle: Text('2일 후'),
              ),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('LISTEN'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}

class FilledCardExample extends StatelessWidget {
  final String countryFlagName;
  final String boundary;

  const FilledCardExample(
      {super.key, required this.countryFlagName, required this.boundary});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: kTodayDiscoveredCardColour,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      leading: CircleAvatar(
          child: Image.asset('assets/images/$countryFlagName.png')),
      title: Row(
        children: [
          Text(
            boundary,
            style: kBoundaryTextStyle,
          ),
          SizedBox(
            width: 5.0,
          ),
          const Icon(
            Icons.arrow_forward_ios_sharp,
            size: 12.0,
            color: Color(0xFF7F7F89),
          ),
        ],
      ),
      subtitle: Text(
        'N시간 후',
        style: kMarketOpeningHoursTextStyle,
      ),
    );
  }
}
