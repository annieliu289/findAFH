import 'package:find_afh/constants.dart';
import 'package:flutter/material.dart';

class LeftColumn extends StatelessWidget {
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      alignment: Alignment.centerRight,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      )),
                  child: Center(
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {},
                        ),
                        const Text(
                          'Find Homes',
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
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

class CityDropdownWidget extends StatefulWidget {
  @override
  _CityDropdownWidgetState createState() => _CityDropdownWidgetState();
}

class _CityDropdownWidgetState extends State<CityDropdownWidget> {
  String dropdownValue = 'Vancouver, WA';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
        underline: SizedBox(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        // Just Vancouver for now, but in future we could add other cities
        items: <String>['Vancouver, WA']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(fontSize: 25),
            ),
          );
        }).toList(),
      ),
    );
  }
}
