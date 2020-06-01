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
                  height: 1360,
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
                                textAlign: TextAlign.center,
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
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(''' - Mar Baselios College of Engineering 
    And Technology ''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              )),
                        ),
                      ],
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
                                textAlign: TextAlign.center,
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
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child:
                              Text(''' -  The Prototype app which converts sign
     language into Text & Voice ''',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                  )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Case Study Of The Paper Yolo",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(''' -  Implemented Use Case Scenario ''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Flutter App Development",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(''' -  My Portfolio App ''',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(''' -  Blog On YOLO ''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 450,
                            height: 10,
                            child: Divider(
                              thickness: 4,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 550,
                            child: Text('''  WORK EXPERIENCE''',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 45,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            width: 450,
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
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text('''  Neuroplex Pvt. Ltd.  ''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(''' - Case Study in YOLO ''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(''' - Face Recognition using Dlib ''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Text("  Excutive Member",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text('''  IEDC-MBCET  ''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(''' - Conducted Workshops''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(''' - Technical Support ''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Text(" e-YRC 2018",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(''' IIT BOMBAY  ''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(''' - 1st Runner-up in E-Yantra 
        Robotic Competition in theme HOMECOMING''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(''' - Did project in ATMega 2560
         as part of making a robot ''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(''' - ML/DL ( Image Recognition using 
           Transfer Learning ) ''',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                  ]),
                ),
                Container(
                    height: 500,
                    width: 630,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 40,
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
                                child: Text('''SKILL''',
                                    textAlign: TextAlign.center,
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
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Card(
                                color: Colors.black,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 60,
                                      width: 350,
                                      child: Text(
                                          '''Platform and Software: Arduino , Pytorch ,Flutter''',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Card(
                                color: Colors.black,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 60,
                                      width: 350,
                                      child: Text(
                                          '''Programming Languages: Embeded C,Python ,C, Dart''',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Card(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                width: 310,
                                height: 10,
                                child: Divider(
                                  thickness: 4,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 60,
                                width: 450,
                                child: Text(''' ACHIEVEMENT''',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 45,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                width: 310,
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
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0, top: 5),
                              child: Text(''' - 1st Runner-up in E-Yantra 
        Robotic Competition in theme HOMECOMING''',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ));
          },
        ),
      ),
    );
  }
}
