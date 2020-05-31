import 'package:flutter/material.dart';
class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyText2,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstrain) {
            return SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Container(
                  height: 1000,
                  width: 630,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 400,
                            height: 10,
                            child: Divider(
                              thickness: 4,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 350,
                            child: Text('''EDUCATION''',
                                style: TextStyle(
                                    fontSize: 45,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            width: 400,
                            height: 10,
                            child: Divider(
                              thickness: 4,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Text("   BTech in CSE",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 5),
                      child: Text('''Mar Baselios College of Engineering 
And Technology ''',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 300,
                            height: 10,
                            child: Divider(
                              thickness: 4,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 250,
                            child: Text(''' PROJECTS''',
                                style: TextStyle(
                                    fontSize: 45,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            width: 300,
                            height: 10,
                            child: Divider(
                              thickness: 4,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Text("   Sign Language App",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 5),
                      child: Text(''' -  The Prototype app which converts sign
     language into Text & Voice ''',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Case Study Of The Paper Yolo",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 5),
                      child: Text(''' -  Implemented Use Case Scenario ''',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Flutter App Development",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 5),
                      child: Text(''' -  My Portfolio App ''',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 5),
                      child: Text(''' -  Blog On YOLO ''',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 500,
                            height: 10,
                            child: Divider(
                              thickness: 4,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 550,
                            child: Text('''    WORK EXPERIENCE''',
                                style: TextStyle(
                                    fontSize: 45,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            width: 500,
                            height: 10,
                            child: Divider(
                              thickness: 4,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Text("  Intern",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ]),
                )
              ],
            ));
          },
        ),
      ),
    );
  }
}
