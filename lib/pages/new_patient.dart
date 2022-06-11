// ignore_for_file: prefer_const_constructors, duplicate_ignore, deprecated_member_use, avoid_print, non_constant_identifier_names, unnecessary_new

import 'package:flutter/material.dart';
import 'package:telemedicine/pages/dr_page.dart';
import 'package:telemedicine/pages/main_page.dart';
import 'package:telemedicine/widget/general_logo.dart';

class newPatient extends StatefulWidget {
  const newPatient({Key? key}) : super(key: key);

  @override
  State<newPatient> createState() => _newPatientState();
}

class _newPatientState extends State<newPatient> {
  @override
  Widget build(BuildContext context) {
    TextEditingController First_Name = new TextEditingController();
    TextEditingController last_name = new TextEditingController();
    TextEditingController data_of_birth = new TextEditingController();
    TextEditingController sex = new TextEditingController();
    TextEditingController phone = new TextEditingController();
    TextEditingController address = new TextEditingController();
    TextEditingController email_address = new TextEditingController();
    TextEditingController id_number = new TextEditingController();
    TextEditingController emergency_contact = new TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text("Add New Patient "),
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
        body: ListView(children: [
          Container(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: Text(
                "Fill up the form below to add a new patient ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Column(
                children: [
                  TextFormField(
                    controller: First_Name,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(20),
                        //     borderSide:
                        //         BorderSide(color: Colors.black, width: 1.5)),
                        hintText: "Patient's First Name",
                        prefixIcon: Icon(Icons.man),
                        prefix: Text(""),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintMaxLines: 2),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: last_name,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        // enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(15),
                        //     borderSide:
                        //         BorderSide(color: Colors.red, width: 3)),
                        // focusedBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(20),
                        // borderSide:
                        //     BorderSide(color: Colors.black, width: 1.5)

                        hintText: "Patient's Last Name",
                        prefixIcon: Icon(Icons.man),
                        prefix: Text(""),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintMaxLines: 2),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: data_of_birth,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(20),
                        //     //     borderSide:
                        //     //         BorderSide(color: Colors.red, width: 3)),
                        //     // focusedBorder: OutlineInputBorder(
                        //     //     borderRadius: BorderRadius.circular(20),
                        //     borderSide:
                        //         BorderSide(color: Colors.black, width: 1.5)),
                        hintText: "Patient's Date Of Birth",
                        prefixIcon: Icon(Icons.date_range),
                        prefix: Text(""),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintMaxLines: 2),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: sex,
                    decoration: InputDecoration(
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(20),
                        //     //     borderSide:
                        //     //         BorderSide(color: Colors.red, width: 3)),
                        //     // focusedBorder: OutlineInputBorder(
                        //     //     borderRadius: BorderRadius.circular(20),
                        //     borderSide:
                        //         BorderSide(color: Colors.black, width: 1.5)),
                        hintText: "Patient's Sex",
                        prefixIcon: Icon(Icons.male),
                        prefix: Text(""),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintMaxLines: 2),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: phone,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(20),
                        //     //     borderSide:
                        //     //         BorderSide(color: Colors.red, width: 3)),
                        //     // focusedBorder: OutlineInputBorder(
                        //     //     borderRadius: BorderRadius.circular(20),
                        //     borderSide:
                        //         BorderSide(color: Colors.black, width: 1.5)),
                        hintText: "Patient's Phone Number",
                        prefixIcon: Icon(Icons.phone),
                        prefix: Text(""),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintMaxLines: 2),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: address,
                    decoration: InputDecoration(
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(20),
                        //     //     borderSide:
                        //     //         BorderSide(color: Colors.red, width: 3)),
                        //     // focusedBorder: OutlineInputBorder(
                        //     //     borderRadius: BorderRadius.circular(20),
                        //     borderSide:
                        //         BorderSide(color: Colors.black, width: 1.5)),
                        hintText: "Patient's Address",
                        prefixIcon: Icon(Icons.home),
                        prefix: Text(""),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintMaxLines: 2),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: email_address,
                    decoration: InputDecoration(
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(20),
                        //     //     borderSide:
                        //     //         BorderSide(color: Colors.red, width: 3)),
                        //     // focusedBorder: OutlineInputBorder(
                        //     //     borderRadius: BorderRadius.circular(20),
                        //     borderSide:
                        //         BorderSide(color: Colors.black, width: 1.5)),
                        hintText: "Patient's Email Address",
                        prefixIcon: Icon(Icons.email),
                        prefix: Text(""),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintMaxLines: 2),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: id_number,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(20),
                        //     //     borderSide:
                        //     //         BorderSide(color: Colors.red, width: 3)),
                        //     // focusedBorder: OutlineInputBorder(
                        //     //     borderRadius: BorderRadius.circular(20),
                        //     borderSide:
                        //         BorderSide(color: Colors.black, width: 1.5)),
                        hintText: "Patient's ID Number",
                        prefixIcon: Icon(Icons.numbers),
                        prefix: Text(""),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintMaxLines: 2),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: emergency_contact,
                    decoration: InputDecoration(
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(20),
                        //     //     borderSide:
                        //     //         BorderSide(color: Colors.red, width: 3)),
                        //     // focusedBorder: OutlineInputBorder(
                        //     //     borderRadius: BorderRadius.circular(20),
                        //     borderSide:
                        //         BorderSide(color: Colors.black, width: 1.5)),
                        hintText: "Patient's Emergency Contact",
                        prefixIcon: Icon(Icons.phone_android_outlined),
                        prefix: Text(""),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintMaxLines: 2),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () {
                        print(First_Name.text);
                        print(last_name.text);
                        print(data_of_birth.text);
                        print(sex.text);
                        print(phone.text);
                        print(address.text);
                        print(email_address.text);
                        print(emergency_contact.text);
                      },
                      child: Text("Submit"),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}
