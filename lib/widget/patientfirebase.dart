// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Widget patientFirebase(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: ListView(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ignore: prefer_const_constructors
              Container(
                padding: EdgeInsets.only(left: 2, bottom: 5),
                child: Text(
                  "Patient's Name",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              Text(doc["Patient name"], style: TextStyle(fontSize: 15)),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(left: 2, bottom: 5),
                child: Text(
                  "Patient's HeartRate",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              Text(doc["Patient's HeartRate"], style: TextStyle(fontSize: 15)),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(left: 2, bottom: 5),
                child: Text(
                  "Patient's Body Temperature",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              Text(doc["Patient's Temperature"],
                  style: TextStyle(fontSize: 15)),
            ],
          ),
        ),
      ],
    ),
  );
}
