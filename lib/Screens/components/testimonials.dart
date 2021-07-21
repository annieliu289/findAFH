import 'package:flutter/material.dart';

class Testimonials extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 400,
        child: Card(
          child: Column(
            children: [
              ListTile(
                title: Text('Why Adult Family Homes?',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 40)),
              )
            ],
          ),
        ),
      );
}
