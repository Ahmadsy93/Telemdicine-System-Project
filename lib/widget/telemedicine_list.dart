import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:telemedicine/network/model/telemed.dart';
import 'package:telemedicine/widget/telemedTile.dart';

class TelemedicineList extends StatefulWidget {
  const TelemedicineList({Key? key}) : super(key: key);

  @override
  State<TelemedicineList> createState() => _TelemedicineListState();
}

class _TelemedicineListState extends State<TelemedicineList> {
  @override
  Widget build(BuildContext context) {
    final telemed = Provider.of<List<Telemedicine>>(context);
    //print(telemed.docs);
    telemed.forEach((tele) {
      print(tele.name);
      print(tele.temperature);
      print(tele.heartrate);
    });

    return ListView.builder(
      itemCount: telemed.length,
      itemBuilder: (context, index) {
        return TelemedTile(
          telemedic: telemed[index],
        );
      },
    );
  }
}
