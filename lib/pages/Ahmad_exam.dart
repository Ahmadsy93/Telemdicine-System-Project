// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_types_as_parameter_names, non_constant_identifier_names

import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:telemedicine/network/model/telemed.dart';
import 'package:telemedicine/pages/Ahmad.dart';
import 'package:telemedicine/pages/main_page.dart';
import 'package:telemedicine/widget/general_logo.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:telemedicine/network/database.dart';
import 'package:provider/provider.dart';
import 'package:telemedicine/widget/patientfirebase.dart';
import 'package:telemedicine/widget/telemedicine_list.dart';
//import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class AhmadExam extends StatefulWidget {
  const AhmadExam({Key? key}) : super(key: key);

  @override
  State<AhmadExam> createState() => _AhmadExamState();
}

class _AhmadExamState extends State<AhmadExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ahmad Exam'),
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
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/images/background2.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Ahmad's Examination Details  ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50, left: 20),
                child: Text(
                  "This vital signs are imported from the Cloud Database in Realtime ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25, left: 20),
                child: Text(
                    "These results will be changed every time the sensors collected new data from the patient ",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ),
              // ElevatedButton(
              //     onPressed: () async {
              //       var tableRef = dbRef.child("Patient's Details");
              //       await tableRef.child("2").set({
              //         'Id ': 1,
              //         'Name': "Flutter ",
              //       });
              //       tableRef.push();
              //       print("Puch called");
              //     },
              //     child: Text("update data")),
              // ElevatedButton(
              //     onPressed: () async {
              //       var tableRef = dbRef.child("Patient's Details");
              //       await tableRef.child("1").update({
              //         'Patient name ': 'Ahmad Mahfoud',
              //         "Patient's HeartRate ": "68 bpm",
              //         "Patient's Temperature ": "36 C",
              //       });
              //       tableRef.push();
              //       print("Puch called");
              //     },
              //     child: Text("Upload data")),
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection("Patient's Details")
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    // Checking the connection state , if we still load the data we can display a progress
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (snapshot.hasData) {
                      return Container(
                        padding: EdgeInsets.only(top: 120),
                        margin: EdgeInsets.all(2),
                        child: Center(
                          child: GridView(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1),
                            children: snapshot.data!.docs
                                .map((note) => patientFirebase(() {}, note))
                                .toList(),
                          ),
                        ),
                      );
                    }
                    return Text(
                      "There is no data to load",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Container(
                          padding: EdgeInsets.all(10),
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.red[700],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          // ignore: prefer_const_literals_to_create_immutables
                          child: Column(children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Warning Message !!",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                            Text(
                              "The Patient has a critical HeartRate readings of 10 bpm !",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ])),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ));
                  },
                  child: const Text("HeartRate Message "),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Container(
                          padding: EdgeInsets.all(10),
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.red[700],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          // ignore: prefer_const_literals_to_create_immutables
                          child: Column(children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Warning Message !!",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                            Text(
                              "The Patient has a critical temperature readings of 39 Degree Celsius !",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ])),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ));
                  },
                  child: const Text("Temperature Message "),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
