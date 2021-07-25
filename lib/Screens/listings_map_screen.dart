import 'package:flutter/material.dart';

import './components/maps.dart';
import './components/top_Bar.dart';
import '../city_dropdown.dart';
import '../constants.dart';
import '../Data/dummy_data.dart';
import '../widgets/map_listing.dart';

class ListingsMapScreen extends StatefulWidget {
  final String listingCity;
  ListingsMapScreen(this.listingCity);

  @override
  _ListingsMapScreenState createState() => _ListingsMapScreenState();
}

class _ListingsMapScreenState extends State<ListingsMapScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: kPlainColor,
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(100, 50, 100, 0), child: TopBar()),
          Container(
            height: mediaQuery.size.height * 0.8315,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                          child: Text(
                            'Location',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 20),
                            height: 70,
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
                                  padding: EdgeInsets.only(
                                      left: mediaQuery.size.width * .15),
                                  child: ElevatedButton(
                                    onPressed: () => {},
                                    style: ElevatedButton.styleFrom(
                                        primary: kPrimaryColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        )),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.search),
                                          onPressed: () {},
                                        ),
                                        const Text(
                                          'Find Homes',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(fontSize: 24),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        // mapping homes from data to widgets
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          constraints: BoxConstraints.loose(Size.square(1200)),
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    child: Container(
                                      height: mediaQuery.size.height * 0.67491,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: LISTED_HOMES
                                              .map(
                                                (ls) => MapListing(
                                                    ls.id,
                                                    ls.name,
                                                    ls.address,
                                                    ls.rating,
                                                    ls.contact,
                                                    ls.image,
                                                    ls.availableBeds,
                                                    ls.startingPrice),
                                              )
                                              .toList(),
                                        ),
                                      ),
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
                Expanded(
                    child: Container(
                  //color: Colors.blue,
                  height: mediaQuery.size.height * 0.8,
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: GoogleMap(),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
