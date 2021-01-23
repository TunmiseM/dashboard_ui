import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardEx extends StatelessWidget {
  CardEx(
      {Key key,
      this.cardtitle,
      this.cardsubtitle,
      this.number,
      this.color1,
      this.color2})
      : super(key: key);

  final String cardtitle;
  final String cardsubtitle;
  final String number;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: MediaQuery.of(context).size.width * 0.45,
      padding: EdgeInsets.all(10.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: RadialGradient(
              radius: 0.5,
                // begin: FractionalOffset.bottomRight,
                // end: FractionalOffset.topLeft,
                colors: [
                  color1,
                  color2,
                ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              cardtitle,
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(number,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    )),
                Icon(
                  Icons.arrow_drop_up,
                  size: 13,
                  color: Colors.green,
                ),
                Text(
                  "12%",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Text(
              cardsubtitle,
              style: TextStyle(color: Colors.grey[500], fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
