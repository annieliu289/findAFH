import 'package:flutter/material.dart';

class RightColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      height: 1200,
      //mediaQuery.size.width * 0.4
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.fromLTRB(0, 0, 200, 600),
      //margin: EdgeInsets.all(50),
      child: Image.asset(
        'assets/images/illustration.png',
        height: mediaQuery.size.height * 0.8,
        //height: 600,
      ),
    );
  }
}
