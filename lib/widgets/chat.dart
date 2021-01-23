import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatEx extends StatelessWidget {
  ChatEx({Key key, this.sendername, this.msg, this.time}) : super(key: key);

  final String sendername;
  final String msg;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.all(10.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            // radius: 0.5,
            begin: FractionalOffset.bottomRight,
            end: FractionalOffset.topLeft,
            colors: [
              Colors.black12,
              Colors.black26,
            ],
          ),
        ),
        child: Row(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.90,
              width: MediaQuery.of(context).size.width * 0.10,
              margin: EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      sendername,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(msg, style: TextStyle(color: Colors.green))
                  ],
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.33,
            ),
            Text(
              time,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
