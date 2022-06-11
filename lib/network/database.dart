// ignore_for_file: unused_element, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:telemedicine/network/model/telemed.dart';
import 'package:flutter/material.dart';
import 'package:telemedicine/network/model/telemed.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});
  // Collection reference
  final CollectionReference telemedicineCollection =
      FirebaseFirestore.instance.collection("Dr Registeration");

  Future updateUserData(
    String name,
    String email,
  ) async {
    return await telemedicineCollection.doc(uid).set({
      'Name': name,
      'Email': email,
    });
  }

  //List of telemed from snapshot
  // List<Telemedicine> _telemedicineFromSnapshot(QuerySnapshot snapshot) {
  //   return snapshot.docs.map((doc) {
  //        return Telemedicine(

  //       name: doc.data['name'] ?? '',
  //       temperature: doc.data['temperature'] ?? 0,
  //       heartrate: doc.data['heartrate'] ?? 0,;

  //   }).toList();
  // }

// Get data from the firebase
  Stream<QuerySnapshot> get telemed {
    return telemedicineCollection.snapshots();
  }
}
