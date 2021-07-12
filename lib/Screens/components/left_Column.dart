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
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            'Location',
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 25,
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
                child: CityDropdownWidget(),
              ),
              Container(
                height: 50,
                width: mediaQuery.size.width * 0.3,
                padding: EdgeInsets.only(left: mediaQuery.size.width * .15),
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
                width: mediaQuery.size.width * 0.29,
                padding: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.12,
                ),
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
                      height: 20,
                    ),
                    Icon(
                      IconData(0xe796, fontFamily: 'MaterialIcons'),
                      size: 100,
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
