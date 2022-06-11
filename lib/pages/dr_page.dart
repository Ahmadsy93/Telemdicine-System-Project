// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:telemedicine/pages/login_page.dart';
import 'package:telemedicine/pages/main_page.dart';
import 'package:telemedicine/pages/new_patient.dart';
import 'package:telemedicine/pages/patient_information.dart';
import 'package:telemedicine/pages/Ahmad_info.dart';
import 'package:telemedicine/widget/button_primary.dart';
import 'package:telemedicine/widget/general_logo.dart';

class DrPage extends StatefulWidget {
  const DrPage({Key? key}) : super(key: key);

  @override
  State<DrPage> createState() => _DrPageState();
}

class _DrPageState extends State<DrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dr page "),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LogingPage();
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
                padding: EdgeInsets.only(
                  top: 60,
                  left: 90,
                ),
                // ignore: prefer_const_constructors
                child: Text(
                  "Welcome Dr Ahmad",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              // Container(
              //     padding: EdgeInsets.only(top: 80, right: 20, left: 28),
              //     child: Column(
              //       children: [
              //         ButttonPrimary(
              //           text: "Patient's Information",
              //           onTap: () {
              //             Navigator.pushReplacement(
              //                 context,
              //                 MaterialPageRoute(
              //                     builder: (context) => PatientInfo()));
              //           },
              //         ),
              //       ],)),
              Container(
                padding: EdgeInsets.only(top: 100, left: 40, right: 40),
                child: ButttonPrimary(
                  text: "Patients Information",
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PatientInformation()));
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 40, right: 40),
                child: ButttonPrimary(
                  text: "Add New Patients ",
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => newPatient()));
                  },
                ),
              ),
              // Container(
              //   padding: EdgeInsets.only(top: 20, left: 40, right: 40),
              //   child: ButttonPrimary(
              //     text: "Send Text Message",
              //     onTap: () {
              //       Navigator.pushReplacement(context,
              //           MaterialPageRoute(builder: (context) => AhmadInfo()));
              //     },
              //   ),
              // ),
            ],
          ),
        ));
  }
}
