import 'package:flutter/material.dart';

class MapListing extends StatelessWidget {
  final String id;
  final String name;
  final String address;
  final String rating;
  final int contact;
  final String image;
  final int availableBeds;
  final int startingPrice;

  MapListing(this.id, this.name, this.address, this.rating, this.contact,
      this.image, this.availableBeds, this.startingPrice);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(5.0),
                width: 270,
                child: Image.asset(image)),
            Container(
              height: 175.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    address,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    availableBeds.toString() + ' available beds',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Contact: ' + contact.toString(),
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rating: ' + rating,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 400),
                    child: Text(
                      'Starting Price: \$' + startingPrice.toString(),
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
