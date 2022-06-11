// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:telemedicine/pages/Ahmad.dart';
import 'package:telemedicine/pages/dr_page.dart';
import 'package:telemedicine/pages/main_page.dart';
import 'package:telemedicine/pages/Ahmad_info.dart';
import 'package:telemedicine/widget/button_primary.dart';
import 'package:telemedicine/widget/general_logo.dart';

class PatientInformation extends StatefulWidget {
  const PatientInformation({Key? key}) : super(key: key);

  @override
  State<PatientInformation> createState() => _PatientInformationState();
}

class _PatientInformationState extends State<PatientInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Information'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DrPage();
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
        child: ListView(
          children: [
            Container(
              child: GeneralLogoSpace(),
            ),
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  "Patients Information",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 110, right: 40),
              child: Text(
                " List Of Patients Names ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 60, left: 80, right: 80),
              child: ButttonPrimary(
                text: " Ahmad Mahfoud",
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => AhmadPage()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
