import 'package:find_afh/constants.dart';
import 'package:flutter/material.dart';

class LeftColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        FractionallySizedBox(
            widthFactor: 0.4,
            alignment: Alignment.centerLeft,
            child: Container(
              //margin: EdgeInsets.only(left: 200),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.white,
                  border: Border.all(
                    color: kPrimaryColor,
                  )),
              child: FractionallySizedBox(
                alignment: Alignment.centerRight,
                widthFactor: 0.25,
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
                          //alignment: Alignment.centerLeft,
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
            )),
        const Padding(
          padding: EdgeInsets.only(top: 60),
          child: FractionallySizedBox(
            widthFactor: 0.4,
            child: Text(
              'adult family homes curated for you and your loved ones',
              style: TextStyle(
                color: Color.fromARGB(255, 50, 58, 117),
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(200, 20, 20, 20),
          child: Icon(
            IconData(0xe796, fontFamily: 'MaterialIcons'),
            size: 100,
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
