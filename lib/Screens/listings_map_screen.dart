import 'package:find_afh/Screens/components/left_Column.dart';
import 'package:flutter/material.dart';

import '../Models/listing.dart';
import './components/top_Bar.dart';
import '../constants.dart';

class ListingsMapScreen extends StatelessWidget {
  final String listingCity;
  ListingsMapScreen(this.listingCity);

  final List<Listing> homeListings = [
    Listing(
      name: 'Resurrection Adult Family Home',
      city: 'Vancouver',
      address: '10800 NE 109th Ave',
      rating: '5/5',
      contact: 5716659250,
      image: 'assets/images/afhStockImage.jpeg',
      availableBeds: 1,
    ),
    Listing(
      name: 'Camas Lily Adult Family Home',
      city: 'Vancouver',
      address: '14016 NE 35th Circle, Vancouver, WA 98682',
      rating: '5/5',
      contact: 3609103450,
      image: 'assets/images/afhStockImage.jpeg',
      availableBeds: 2,
    ),
    Listing(
      name: 'First Place Adult Family Home',
      city: 'Vancouver',
      address: '14731 NE 11th Street, Vancouver, WA 98684',
      rating: '5/5',
      contact: 3605139667,
      image: 'assets/images/afhStockImage.jpeg',
      availableBeds: 6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPlainColor,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(100, 50, 100, 0), child: TopBar()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          LeftColumn(),

                          // mapping homes from data to widgets
                          Container(
                            margin: EdgeInsets.fromLTRB(75, 0, 0, 0),
                            constraints:
                                BoxConstraints.loose(Size.square(1200)),
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                      child: Column(
                                        children: homeListings.map((ls) {
                                          return Container(
                                            width: double.infinity,
                                            child: Card(
                                              child: Row(
                                                children: [
                                                  Container(
                                                      margin:
                                                          EdgeInsets.all(5.0),
                                                      child: Image.asset(
                                                          ls.image)),
                                                  Container(
                                                    height: 150.0,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          ls.name,
                                                          style: TextStyle(
                                                              fontSize: 35.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          ls.address,
                                                          style: TextStyle(
                                                              fontSize: 20.0),
                                                        ),
                                                        Text(
                                                          ls.availableBeds
                                                                  .toString() +
                                                              ' available beds',
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          'Contact: ' +
                                                              ls.contact
                                                                  .toString(),
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          'Rating: ' +
                                                              ls.rating,
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  constraints: BoxConstraints.tight(Size(800, 800)),
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Column(
                    children: [
                      Text('This is where the Map View will be:'),
                      Placeholder(
                        fallbackHeight: 700,
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
