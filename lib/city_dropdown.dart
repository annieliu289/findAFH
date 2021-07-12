import 'package:flutter/material.dart';

import './constants.dart';

import './Screens/listings_map_screen.dart';

class CityDropdownWidget extends StatefulWidget {
  @override
  _CityDropdownWidgetState createState() => _CityDropdownWidgetState();
}

class _CityDropdownWidgetState extends State<CityDropdownWidget> {
  String dropdownValue = 'Vancouver, WA';

  void selectCity(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return ListingsMapScreen(dropdownValue);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Colors.white,
          border: Border.all(
            color: kPrimaryColor,
          )),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        iconSize: 42,
        elevation: 16,
        style: const TextStyle(color: kPrimaryColor),
        underline: const SizedBox(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        //onTap: () => selectCity(context),
        // Just Vancouver for now, but in future we could add other cities
        items: <String>['Vancouver, WA']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(fontSize: 24),
            ),
          );
        }).toList(),
      ),
    );
  }
}
