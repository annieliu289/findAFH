import 'package:flutter/material.dart';

class Testimonials extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 400,
        child: Card(
          child: Column(
            children: [
              ListTile(
                title: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Why',
                        style: TextStyle(decoration: TextDecoration.underline)),
                    TextSpan(text: ' Adult Family Homes?')
                  ]),
                ),
              ),
              Container(
                height: 500,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    Card(
                      elevation: 5,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'More Personalized Care',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  '\nWith fewer older adults, staff can more easily detect physical and emotional changes in residents.')
                        ]),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Staff-to-Client Ratio',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  '\nUnlike in larger assisted living communities or skilled nursing, the staff-to-client ratio often higher in Adult Family Homes.')
                        ]),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Meals are home cooked',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: '\nThey can also be customized :)')
                        ]),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'The homelike, smaller environment',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  '\nThe stability makes it a great fit for those with Dementia and can help any resident form friendships with fellow residents and staff more easily.')
                        ]),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'The presence of other residents',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  '\nThis encourages socialization, and can lessen loneliness and enhance well-being. ')
                        ]),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Cheaper monthly fee',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  '\nWith fewer amenities, Adult Family homes are generally cheaper than other long-term living options')
                        ]),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
