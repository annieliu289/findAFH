import 'package:find_afh/constants.dart';
import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';

void main() {
  runApp(FindAFH());
}

class FindAFH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: kBackgroundColor),
    );
  }
}
