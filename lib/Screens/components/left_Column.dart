import 'package:find_afh/Screens/listings_map_screen.dart';
import 'package:find_afh/constants.dart';
import 'package:flutter/material.dart';

import 'package:find_afh/city_dropdown.dart';

class LeftColumn extends StatefulWidget {
  @override
  _LeftColumnState createState() => _LeftColumnState();
}

class _LeftColumnState extends State<LeftColumn> {
  String dropdownValue = 'Vancouver, WA';

  void selectCity(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return ListingsMapScreen(dropdownValue);
    }));
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 60,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(100, 0, 625, 20),
          child: Text(
            'Location',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
        Container(
          width: mediaQuery.size.width * 0.4,
          child: Stack(
            children: [
              Container(
                height: 50,
                width: mediaQuery.size.width * 0.3,
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: CityDropdownWidget(),
              ),
              Container(
                height: 50,
                width: mediaQuery.size.width * 0.3,
                padding: EdgeInsets.fromLTRB(290, 0, 0, 0),
                child: ElevatedButton(
                  onPressed: () => {
                    selectCity(context),
                  },
                  style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                      const Text(
                        'Find Homes',
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: mediaQuery.size.width * 0.35,
                padding: EdgeInsets.fromLTRB(
                    30, mediaQuery.size.height * 0.12, 0, 0),
                child: Column(
                  children: [
                    Text(
                      'adult family homes curated for you and your loved ones',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.size.height * 0.08,
                    ),
                    Icon(
                      IconData(0xe796, fontFamily: 'MaterialIcons'),
                      size: 150,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
