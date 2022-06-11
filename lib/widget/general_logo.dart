// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GeneralLogoSpace extends StatelessWidget {
  final Widget? child;

  GeneralLogoSpace({this.child});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Image.asset(
            "lib/images/logo.jpg",
            width: 90,
          ),
          child ?? SizedBox()
        ],
      ),
    );
  }
}
