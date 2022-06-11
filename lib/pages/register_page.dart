// ignore_for_file: prefer_const_constructors, empty_statements, prefer_equal_for_default_values, avoid_print, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:telemedicine/network/auth.dart';
import 'package:telemedicine/pages/login_page.dart';
import 'package:telemedicine/pages/main_page.dart';
import 'package:telemedicine/theme.dart';
import 'package:telemedicine/widget/button_primary.dart';
import 'package:telemedicine/widget/general_logo.dart';
//import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  // final Function toggleView;
  // const RegisterPage({required this.toggleView});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final AuthService _authService = AuthService();
  final _formkey = GlobalKey<FormState>();

  // Registeration Field
  String fullname = '';
  String email = '';
  String phone = '';
  String mmcn = '';
  String password = '';
  String error = '';

  bool _secureText = true;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registration Page "),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SplashScreen();
              }));
            },
          ),
          backgroundColor: Colors.green,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/images/background2.jpg"),
                  fit: BoxFit.cover)),
          child: ListView(children: [
            Container(
              child: GeneralLogoSpace(),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(children: [
                Text(
                  "REGISTRATION PAGE",
                  style: regularTextStyle.copyWith(fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Register New Account",
                  style: regularTextStyle.copyWith(
                      fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),

                // Text field
                Container(
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 16, left: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x40000000),
                                    offset: Offset(0, 1),
                                    blurRadius: 4,
                                    spreadRadius: 0)
                              ],
                              color: whiteColor),
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Your Full Name ';
                                }
                                return null;
                              },
                              onChanged: (val) {
                                setState(() => fullname = val);
                              },
                              //controller: fullNameController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Full Name',
                                  hintStyle: LightTextStyle.copyWith(
                                      fontSize: 15, color: greylightColor))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 15),
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x40000000),
                                    offset: Offset(0, 1),
                                    blurRadius: 4,
                                    spreadRadius: 0)
                              ],
                              color: whiteColor),
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Your Email ';
                                }
                                return null;
                              },
                              onChanged: (val) {
                                setState(() => email = val);
                              },
                              //controller: emailController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email Address',
                                  hintStyle: LightTextStyle.copyWith(
                                      fontSize: 15, color: greylightColor))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 15),
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x40000000),
                                    offset: Offset(0, 1),
                                    blurRadius: 4,
                                    spreadRadius: 0)
                              ],
                              color: whiteColor),
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Your Phone No';
                                }
                                return null;
                              },
                              onChanged: (val) {
                                setState(() => phone = val);
                              },
                              //controller: phoneController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Phone Number',
                                  hintStyle: LightTextStyle.copyWith(
                                      fontSize: 15, color: greylightColor))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 15),
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x40000000),
                                    offset: Offset(0, 1),
                                    blurRadius: 4,
                                    spreadRadius: 0)
                              ],
                              color: whiteColor),
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Your Mccn No';
                                }
                                return null;
                              },
                              onChanged: (val) {
                                setState(() => mmcn = val);
                              },
                              //controller: addressController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Malaysian Medical Council No ',
                                  hintStyle: LightTextStyle.copyWith(
                                      fontSize: 15, color: greylightColor))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 15),
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x40000000),
                                    offset: Offset(0, 1),
                                    blurRadius: 4,
                                    spreadRadius: 0)
                              ],
                              color: whiteColor),
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                              validator: (val) => val!.length < 6
                                  ? 'Password should be not less than 6 chars'
                                  : null,
                              onChanged: (val) {
                                setState(() => password = val);
                              },
                              //controller: passwordController,
                              obscureText: _secureText,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: showHide,
                                      icon: _secureText
                                          ? Icon(
                                              Icons.visibility_off,
                                              size: 20,
                                            )
                                          : Icon(
                                              Icons.visibility,
                                              size: 20,
                                            )),
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  hintStyle: LightTextStyle.copyWith(
                                      fontSize: 15, color: greylightColor))),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            child: ButttonPrimary(
                                text: "Register",
                                onTap: () async {
                                  if (_formkey.currentState!.validate()) {
                                    dynamic result = await _authService
                                        .registerWithEmailAndPassword(
                                            email, password);
                                    if (result == null) {
                                      setState(() => error =
                                          'Please supply a valid email');
                                    }
                                  }
                                  print(email);
                                  print(password);
                                  //widget.toggleView();

                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LogingPage()),
                                      (route) => false);
                                })),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          error,
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account ?    ",
                                style: LightTextStyle.copyWith(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LogingPage()),
                                      (route) => false);
                                },
                                child: Text(
                                  " Login Now",
                                  style: LightTextStyle.copyWith(
                                      color: greenColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ));
  }
}
