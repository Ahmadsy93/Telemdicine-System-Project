// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:telemedicine/pages/Ahmad_exam.dart';
import 'package:telemedicine/pages/Realtime.dart';
import 'package:telemedicine/pages/main_page.dart';
import 'package:telemedicine/pages/patient_information.dart';
import 'package:telemedicine/pages/Ahmad_info.dart';
import 'package:telemedicine/widget/button_primary.dart';
import 'package:telemedicine/widget/general_logo.dart';

class AhmadPage extends StatefulWidget {
  const AhmadPage({Key? key}) : super(key: key);

  @override
  State<AhmadPage> createState() => _AhmadPageState();
}

class _AhmadPageState extends State<AhmadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ahmad Mahfoud'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return PatientInformation();
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
        child: ListView(children: [
          Container(
            child: GeneralLogoSpace(),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            // ignore: prefer_const_constructors
            child: Center(
              child: Text(
                "Patient Ahmad Mahfoud",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 80, left: 80, right: 80),
            child: ButttonPrimary(
              text: " Ahmad's Information",
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => AhmadInfo()));
              },
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 30, left: 80, right: 80),
              child: ButttonPrimary(
                text: " Ahmad's Examination Details",
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => AhmadExam()));
                },
              )),
          Container(
            padding: EdgeInsets.only(top: 30, left: 80, right: 80),
            child: ButttonPrimary(
              text: " Realtime Data",
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => realTime()));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
