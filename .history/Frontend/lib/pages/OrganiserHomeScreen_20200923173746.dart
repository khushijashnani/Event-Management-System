import 'package:flutter/material.dart';
import 'package:uvento/constants.dart';

class OrganiserHomeScreen extends StatefulWidget {
  @override
  _OrganiserHomeScreenState createState() => _OrganiserHomeScreenState();
}

class _OrganiserHomeScreenState extends State<OrganiserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: BACKGROUND
              ),
            ),

            Container(
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, 
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.asset(
                          "assets/logo.png",
                          height: 35,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "HAPPEN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              "INGS",
                              style: TextStyle(
                                  color: Color(0xffFFA700),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.italic),
                            )
                          ],
                        ),
                      ),
                    ]
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}