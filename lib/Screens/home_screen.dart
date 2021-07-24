import 'package:find_afh/Screens/components/left_Column.dart';
import 'package:find_afh/Screens/components/right_Column.dart';
import 'package:find_afh/Screens/components/testimonials.dart';
import 'package:find_afh/constants.dart';
import 'package:flutter/material.dart';

import 'package:find_afh/Screens/components/top_Bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kBackgroundColor,
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(100, 50, 100, 0), child: TopBar()),
            Container(
              height: mediaQuery.height * 0.832,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        //color: Colors.orange,
                        height: mediaQuery.height * 0.832,
                        child: LeftColumn()),
                  ),
                  Expanded(
                      child: Container(
                          //color: Colors.blue,
                          height: mediaQuery.height * 0.832,
                          child: RightColumn())),
                ],
              ),
            ),
            Container(
              height: mediaQuery.height * 1.0,
              child: Testimonials(),
            )
          ],
        )

        // body: Stack(
        //   children: [
        //     Positioned(
        //       top: 50,
        //       left: 100,
        //       right: 100,
        //       child: TopBar(),
        //     ),
        //     Positioned(
        //       top: 300,
        //       left: 300,
        //       right: 100,
        //       child: LeftColumn(),
        //     ),
        //     Positioned(
        //       top: 300,
        //       left: 500,
        //       right: 100,
        //       child: RightColumn(),
        //     ),
        //     Positioned(
        //       top: 1100,
        //       left: 0,
        //       right: 0,
        //       child: Testimonials(),
        //     )
        //   ],
        // ),
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
