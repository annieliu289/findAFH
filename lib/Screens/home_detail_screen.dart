import 'dart:io';

import 'package:flutter/gestures.dart';

import 'components/top_Bar.dart';
import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/map_listing.dart';
import '../Data/dummy_data.dart';
import '../constants.dart';
import '../city_dropdown.dart';
//import 'package:sticky_footer_scrollview/sticky_footer_scrollview.dart';

class HomeDetailScreen extends StatefulWidget {
  @override
  _HomeDetailScreenState createState() => _HomeDetailScreenState();
}

class _HomeDetailScreenState extends State<HomeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    String bullet = "\u2022";
    int price = 1000;
    int price2 = 2500;
    return Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: kPlainColor,
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            //child: ConstrainedBox(
            //constraints: BoxConstraints(),
            //children[]: ListView(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(100, 50, 100, 0),
                  child: TopBar()),
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
                            Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                    child: Text('Camas Lily Adult Family Home',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                        ))),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  //width: mediaQuery.size.width * 0.5,
                                  //height: mediaQuery.size.height * 0.5,
                                  alignment: Alignment.topLeft,
                                  width: 700,
                                  height: 700,

                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/images/camasLilyAFH.jpg',
                                          width: 700,
                                          height: 700,
                                          //fit: BoxFit.fill
                                        )
                                      ]),
                                ),
                                const SizedBox(
                                  width: 300,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Card(
                                            child: new Container(
                                              //padding: new EdgeInsets.all(32.0),
                                              //height: mediaQuery.size.height * 0.3,
                                              //width: mediaQuery.size.width * 0.3,
                                              height: 250,
                                              width: 500,
                                              alignment: Alignment.topCenter,
                                              color: Color.fromRGBO(
                                                  66, 165, 245, 1.0),
                                              child: new Row(
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          RichText(
                                                              text: TextSpan(
                                                                  text:
                                                                      'Rates start at\n',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        25,
                                                                  ),
                                                                  children: <
                                                                      TextSpan>[
                                                                TextSpan(
                                                                    text: '\$' +
                                                                        price
                                                                            .toString(),
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          25,
                                                                    )),
                                                                TextSpan(
                                                                    text:
                                                                        '/month',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          25,
                                                                    ))
                                                              ]))
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 30,
                                                      ),
                                                      Column(
                                                        children: [
                                                          Text(
                                                            '~',
                                                            style: TextStyle(
                                                              fontSize: 25,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 30,
                                                      ),
                                                      Column(children: [
                                                        RichText(
                                                            text: TextSpan(
                                                                text:
                                                                    'to approximately\n',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 25,
                                                                ),
                                                                children: <
                                                                    TextSpan>[
                                                              TextSpan(
                                                                  text: '\$' +
                                                                      price2
                                                                          .toString(),
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        25,
                                                                  )),
                                                              TextSpan(
                                                                  text:
                                                                      '/month*',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        25,
                                                                  ))
                                                            ])),
                                                      ])
                                                    ],
                                                  ),
                                                  //Spacer(),
                                                  Row(
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                primary:
                                                                    kPrimaryColor,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              1),
                                                                )),
                                                        child: const Text(
                                                            'Book Tour'),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        children: [
                                          Card(
                                            child: new Container(
                                              //padding: new EdgeInsets.all(32.0),
                                              //height: mediaQuery.size.height * 0.3,
                                              //width: mediaQuery.size.width * 0.3,
                                              height: 250,
                                              width: 500,
                                              alignment: Alignment.bottomCenter,
                                              color: Color.fromRGBO(
                                                  66, 165, 245, 1.0),
                                              child: Column(
                                                children: [
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text('Owner Profile',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 40,
                                                      )),
                                                  const SizedBox(
                                                    height: 30,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Auctor neque sed\nimperdiet nibh lectus feugiat nunc sem.',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 25,
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),

                            Row(
                              children: [
                                Text('164744 Ashworth Ave N, 98133',
                                    style: TextStyle(
                                      fontSize: 20,
                                    )),
                                //Text('\nContact: (123)456-7890'),
                              ],
                            ),
                            Row(
                              children: [Text('Contact: (123)456-7890')],
                            ),
                            Container(
                              width: mediaQuery.size.width * 0.6,
                              child: Column(
                                children: [
                                  Text(
                                      'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                                ],
                              ),
                            ),
                            Container(
                              child: Divider(),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text('Services Offered:'),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(bullet + ' Lorem Ipsum has been the'),
                              ],
                            ),
                            Row(
                              children: [
                                Text(bullet + ' When an unknown printer took'),
                              ],
                            ),
                            Row(
                              children: [
                                Text(bullet +
                                    ' A gallery of type and scrambled it'),
                              ],
                            ),
                            Row(
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: 'Patient-to-caregiver Ratio:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        children: const <TextSpan>[
                                      TextSpan(text: ' 1 to 3'),
                                    ]))
                              ],
                            ),
                            Container(
                              child: Divider(),
                            ),
                            Row(
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: '4.6 Ratings from ',
                                        children: <TextSpan>[
                                      //Link('www.google.com')
                                      TextSpan(
                                          text: 'Reviews',
                                          style: TextStyle(
                                            color: Colors.blue,
                                            decoration:
                                                TextDecoration.underline,
                                          ))
                                    ]))
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Nita Montgomery'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Google Reviews'),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                        'I would recommend Golden Hill to anyone looking for\nan excellent living experience for their loved one. The beautiful\nhome is located in a quiet natural setting surrounded by trees.\nThe common areas are roomy, light and designed so each\nresident is afforded privacy as well as welcome in the open\nspaces for group activities. The home is meticulously cared for\nand kept exceedingly clean.')
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
/*
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              constraints: BoxConstraints.loose(Size.square(3000)),
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () => {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(builder: (_) {
                                            return HomeDetailScreen();
                                          }))
                                        },
                                        child: Card(
                                          child: Container(
                                            //height: mediaQuery.size.height,
                                            height:
                                                mediaQuery.size.height * 0.67491,
                                            width: mediaQuery.size.width,
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
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            */
                        //],
                        //),
                      ),
                    ),
                    /*
                    Expanded(
                        child: Container(
                      //color: Colors.blue,
                      height: mediaQuery.size.height * 0.8,
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: GoogleMap(),
                    )),*/
                  ],
                ),
              ),
            ],
          ),
          //),
          //),
        ));
  }
}
