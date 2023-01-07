import 'package:flutter/material.dart';
import '../constants.dart';

class cardBox extends StatelessWidget {
  const cardBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.only(top: 20.0),
        child: SizedBox(
          width: 100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              ListTile(
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
      {required this.countryFlagName, required this.boundary});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kTodayDiscoveredCardColour,
      ),
      child: Row(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          CircleAvatar(
            radius: 20.0,
            child: Image.asset('assets/images/$countryFlagName.png'),
          ),
          const SizedBox(width: 15.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    boundary,
                    style: kBoundaryTextStyle,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 12.0,
                    color: Color(0xFF7F7F89),
                  ),
                ],
              ),
              Text(
                'N시간 후',
                style: kMarketOpeningHoursTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// ListTile(
// tileColor: kTodayDiscoveredCardColour,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(20),
// ),
// title: Row(
// children: [
// Expanded(
// ),
// ],
// ),
// );
