// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:telemedicine/pages/login_page.dart';
import 'package:telemedicine/pages/register_page.dart';
import 'package:telemedicine/widget/button_primary.dart';
import 'package:telemedicine/widget/general_logo.dart';
import 'package:telemedicine/widget/widget_illustration_page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Health Care App"),
          centerTitle: true,
          backgroundColor: Colors.green),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/images/background2.jpg"),
                fit: BoxFit.cover)),
        child: GeneralLogoSpace(
            child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 20,
            ),
            WidgetIllustration(
              title: "Welcome To Health Care Clinic",
              subtitle1: "This Is Dr Side Application ",
              subtitle2: "",
              child: Container(
                padding: EdgeInsets.only(top: 150),
                child: ButttonPrimary(
                  text: "GET STARTED",
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
