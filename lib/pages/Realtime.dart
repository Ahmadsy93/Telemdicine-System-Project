// ignore_for_file: avoid_unnecessary_containers, avoid_print, deprecated_member_use, unused_element, unused_local_variable, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:telemedicine/pages/Ahmad.dart';
import 'package:telemedicine/pages/main_page.dart';

class realTime extends StatefulWidget {
  const realTime({Key? key}) : super(key: key);

  @override
  State<realTime> createState() => _realTimeState();
}

class _realTimeState extends State<realTime> {
  final dbRef = FirebaseDatabase.instance.reference().child("Ahmed");
  late DatabaseReference databaseReference;

  setData() {
    dbRef.child("Info").set({
      "Name": "Ahmad ",
      'HearRate ': "68 bpm ",
      'Tempearture': "34 ℃",
    });
  }

  showData() {
    dbRef.once().then((snapshot) {
      print(snapshot.snapshot.value);
    }).asStream();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    databaseReference = dbRef;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Realtime'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AhmadPage();
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
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              image: DecorationImage(
                  image: AssetImage("lib/images/background2.jpg"),
                  fit: BoxFit.cover)),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Ahmad's RealTime Examination Details  ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "This vital signs are imported from the RealTime Database ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 25,
                  ),
                  // ignore: prefer_const_constructors
                  child: Text("These results will be changed every 10 seconds ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // ignore: prefer_const_constructors
                  child: Text(
                      "The colleced data also include the time had been taken ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "The first card shows the collected temperature data and the second one is the heartrate data ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),

                //   onPressed: setData,
                //   child: Text(
                //     "Store Data",
                //     style: TextStyle(color: Colors.blue),
                //   ),
                // ),
                // TextButton(
                //   onPressed: showData,
                //   child: Text(
                //     "Show Data",
                //     style: TextStyle(color: Colors.blue),
                //   ),
                // ),
                FirebaseAnimatedList(
                    shrinkWrap: true,
                    query: databaseReference,
                    itemBuilder: (
                      BuildContext context,
                      DataSnapshot snapshot,
                      Animation<double> animation,
                      int index,
                    ) {
                      return Container(
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.only(top: 50),
                        child: Card(
                            shadowColor: Colors.red,
                            elevation: 8,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            color: Color.fromARGB(255, 119, 187, 121),
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 30, bottom: 30, right: 100, left: 100),
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  // ignore: prefer_const_constructors
                                  gradient: LinearGradient(
                                      colors: [Colors.green, Colors.orange],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(snapshot.value.toString(),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500)),
                                  ]),
                            )),
                      );
                    })
              ],
            ),
          ),
        )

        // Container(
        //   padding: EdgeInsets.all(100),
        //   child: Center(
        //       child: Column(children: [
        //     ElevatedButton(
        //         onPressed: () async {
        //           var tableRef = dbRef.child("Patient's Details");
        //           await tableRef.child("1").set({
        //             'Patient name ': 'Ahmad Mahfoud',
        //             "Patient's HeartRate ": "68 bpm",
        //             "Patient's Temperature ": "36 C",
        //           });
        //           tableRef.push();
        //           print("Puch called");
        //         },
        //         child: Text("Upload data")),
        //     Container(
        //         child: ElevatedButton(
        //             onPressed: () async {
        //               var tableRef = dbRef.child("Patient's Details");
        //               await tableRef.child("1").update({
        //                 'Id ': 1,
        //                 'Name': "Flutter ",
        //               });
        //               tableRef.push();
        //               print("Puch called");
        //             },
        //             child: Text("Update data")))
        //   ])),
        // ),
        );
  }
}
