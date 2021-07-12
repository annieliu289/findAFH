import 'package:flutter/material.dart';

class ListingsMapScreen extends StatelessWidget {
  final String listingCity;

  ListingsMapScreen(this.listingCity);

  @override
  Widget build(BuildContext context) {
    //print('hey');
    return Scaffold(
      appBar: AppBar(
        title: Text(listingCity),
      ),
      body: Center(
        child: Text(
            "Here I will add a row of the Adult Family Homes in Vancouver and a mapview"),
      ),
    );
  }
}
