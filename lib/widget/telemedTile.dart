// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:telemedicine/network/model/telemed.dart';

class TelemedTile extends StatelessWidget {
  final Telemedicine telemedic;
  TelemedTile({required this.telemedic});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
        padding: EdgeInsets.only(top: 8),
        child: Card(
          margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
          // ignore: prefer_const_constructors
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.brown,
            ),
            title: Text(telemedic.name),
            subtitle: Text('HeartRate ${telemedic.temperature} Celicus(C) '),
          ),
        ));
  }
}
