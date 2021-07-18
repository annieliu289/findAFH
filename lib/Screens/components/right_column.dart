import 'package:flutter/material.dart';

class RightColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      //color: Colors.yellow,
      height: 2000,
      //mediaQuery.size.width * 0.4
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.fromLTRB(400, 0, 0, 1200),
      //margin: EdgeInsets.all(50),
      child: Image.asset(
        'assets/images/illustration.png',
        height: 700,
        fit: BoxFit.fitHeight,
        //height: mediaQuery.size.height * 1,
        //width: 600,
        //height: 600,
      ),
    );
  }
}
