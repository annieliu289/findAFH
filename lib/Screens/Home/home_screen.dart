import 'package:find_afh/Screens/components/left_Column.dart';
import 'package:find_afh/Screens/components/right_Column.dart';
import 'package:find_afh/constants.dart';
import 'package:flutter/material.dart';

import 'package:find_afh/Screens/components/top_Bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 100,
            right: 100,
            child: TopBar(),
          ),
          Positioned(
            top: 300,
            left: 300,
            right: 100,
            child: LeftColumn(),
          ),
          Positioned(
            top: 300,
            left: 500,
            right: 100,
            child: RightColumn(),
          )
        ],
      ),
    );
  }
}

//An alternative way of splitting the screens
// Row(
//   children: [
//     Expanded(
//       child: LeftColumn(),
//     ),
//     Expanded(child: RightColumn()),
//   ],
// )
