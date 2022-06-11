// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:telemedicine/theme.dart';
import 'package:telemedicine/theme.dart';

class WidgetIllustration extends StatelessWidget {
  final Widget? child;
  final String? image;
  final String? title;
  final String? subtitle1;
  final String? subtitle2;

  WidgetIllustration(
      {this.child, this.image, this.subtitle1, this.subtitle2, this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          title!,
          style: regularTextStyle.copyWith(
              fontSize: 23, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          children: [
            Text(
              subtitle1!,
              style: regularTextStyle.copyWith(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              subtitle2!,
              style:
                  regularTextStyle.copyWith(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(
              height: 40,
            ),
            child ?? SizedBox(),
          ],
        )
      ],
    );
  }
}
