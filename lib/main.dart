import 'package:dashboard_ui/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_ui/widgets/chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CredEquity',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Stats'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0d335d),
          elevation: 5.0,
          title: Text(
            widget.title,
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ),
        body: PageView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(18.0),
              color: Color(0xff0d335d),
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CardEx(
                        cardtitle: "Reach",
                        number: "17",
                        color1: Color(0xff794c74),
                        color2: Color(0xffc56183),
                        cardsubtitle: "New Candidates",
                      ),
                      CardEx(
                        cardtitle: "Savings",
                        number: "23.57%",
                        color1: Color(0xff3797a4),
                        color2: Color(0xff8bcdcd),
                        cardsubtitle: "Omo",
                      ),
                    ],
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CardEx(
                        cardtitle: "Coverage",
                        number: "540",
                        color1: Color(0xffff9642),
                        color2: Color(0xffffd66b),
                        cardsubtitle: "Active Recruiters",
                      ),
                      CardEx(
                        cardtitle: "Time",
                        number: "32",
                        color1: Color(0xff0d335d),
                        color2: Color(0xff1a508b),
                        cardsubtitle: "Time to fill(avg)",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Settings",
                              style: TextStyle(color: Colors.white)),
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Max Commission",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text("30%", style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Min moneyback period",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text("3", style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Min recruiter rating",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text("4/5", style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Max Profiles/Position",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text("4/5", style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Color(0xff0d335d),
                height: double.infinity,
                width: double.infinity,
                child: Column(children: <Widget>[
                  Row(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ChatEx(
                          sendername: "Tolu",
                          msg: "Hi",
                          time: "12:00",
                        ),
                      ])
                ])),
          ],
          scrollDirection: Axis.horizontal,
        ));
  }
}
