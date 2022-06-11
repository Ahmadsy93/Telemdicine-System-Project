// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:telemedicine/pages/Ahmad.dart';
import 'package:telemedicine/pages/dr_page.dart';
import 'package:telemedicine/pages/main_page.dart';
import 'package:telemedicine/pages/patient_information.dart';
import 'package:telemedicine/widget/general_logo.dart';

class AhmadInfo extends StatefulWidget {
  const AhmadInfo({Key? key}) : super(key: key);

  @override
  State<AhmadInfo> createState() => _AhmadInfoState();
}

class _AhmadInfoState extends State<AhmadInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ahmad Info'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AhmadPage();
              }));
            },
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SplashScreen();
                  }));
                },
                icon: Icon(Icons.home))
          ],
          backgroundColor: Colors.green,
        ),
        body: ListView(children: [
          Container(
              padding:
                  EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
              child: Text(
                "This Ahmad's information page",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Center(
            child: Column(children: [
              SizedBox(height: 30),
              Image.asset(
                "lib/images/ahmad.jpg",
                width: 120,
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 100),
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 8, bottom: 4),
                          child: Text(
                            "  First Name",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8, bottom: 4),
                          child: Text(
                            "   Ahmad ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 8, bottom: 4),
                          child: Text(
                            "  Last Name",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8, bottom: 4),
                          child: Text(
                            "   Mahfoud ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 8, bottom: 4),
                          child: Text(
                            "  Date Of Birth ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8, bottom: 4),
                          child: Text(
                            "   22/09/1993",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 8, bottom: 4),
                          child: Text(
                            "  Sex ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8, bottom: 4),
                          child: Text(
                            "   Male ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 8, bottom: 4),
                          child: Text(
                            "  Phone Number ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 8, bottom: 4),
                            child: Text("   0123456",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)))
                      ]),
                      TableRow(children: [
                        Container(
                            padding: EdgeInsets.only(top: 8, bottom: 4),
                            child: Text(
                              "  Address ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 8, bottom: 4),
                            child: Text("   Kuala Lumpur",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)))
                      ]),
                      TableRow(children: [
                        Container(
                            padding: EdgeInsets.only(top: 8, bottom: 4),
                            child: Text(
                              "  Email Address  ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 8, bottom: 4),
                            child: Text("   Ahmad@gmail.com",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)))
                      ]),
                      TableRow(children: [
                        Container(
                            padding: EdgeInsets.only(top: 8, bottom: 4),
                            child: Text(
                              "  ID Number ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 8, bottom: 4),
                            child: Text("   0123456",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)))
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 8, bottom: 2),
                          child: Text(
                            """  Emergency Contact 
  Number """,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 12, bottom: 4),
                          child: Text(
                            "   147896325 ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
              ),
            ]),
          )
        ]));
  }

  // Future<bool> onWillPop() async {
  //   final shouldPop = await showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //             title: Text("Are You sure"),
  //             actions: <Widget>[
  //               FlatButton(
  //                   onPressed: () => Navigator.of(context).pop(false),
  //                   child: Text('No')),
  //               FlatButton(
  //                   onPressed: () => Navigator.of(context).pop(true),
  //                   child: Text('Yes')),
  //             ],
  //           ));
  //   return shouldPop ?? false;
  // }
}
