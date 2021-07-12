import 'package:flutter/material.dart';

class Afh {
  final String name;
  final String city;
  final String address;
  final String rating;
  final int contact;
  final bool acceptsMedicaid;
  //final Image image ;

  const Afh({
    required this.name,
    required this.city,
    required this.address,
    required this.rating,
    required this.contact,
    required this.acceptsMedicaid,
    //this.image = Image.asset('assets/images/afhStockImage.jpeg'),
  });
}
