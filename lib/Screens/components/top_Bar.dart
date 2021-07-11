import 'package:flutter/material.dart';

import 'package:find_afh/constants.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FractionallySizedBox(
        widthFactor: 0.85,
        child: Container(
          height: 125,
          decoration: BoxDecoration(
            color: kPlainColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.16),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Expanded(
                  child: Image.asset(
                    'assets/images/findAFHlogo.png',
                    height: 75,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: kPrimaryColor,
                  ),
                  child: const Text(
                    'How it works',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: kPrimaryColor,
                  ),
                  child: const Text(
                    'Why Adult Family Homes?',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: kPrimaryColor,
                  ),
                  child: const Text(
                    'List a Home',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                          )),
                      child: const Text(
                        'Create an Account',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
