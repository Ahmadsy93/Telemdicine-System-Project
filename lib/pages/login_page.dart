// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telemedicine/network/auth.dart';
import 'package:telemedicine/pages/dr_page.dart';
import 'package:telemedicine/pages/register_page.dart';
import 'package:telemedicine/pages/main_page.dart';
import 'package:telemedicine/theme.dart';
import 'package:telemedicine/widget/button_primary.dart';
import 'package:telemedicine/widget/general_logo.dart';

class LogingPage extends StatefulWidget {
  @override
  State<LogingPage> createState() => _LogingPageState();
}

class _LogingPageState extends State<LogingPage> {
  final AuthService _authService = AuthService();
  final _formkey = GlobalKey<FormState>();
  String email = '';
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
        title: Text("Login Page"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return RegisterPage();
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
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "LOGIN PAGE",
                    style: regularTextStyle.copyWith(fontSize: 25),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Login Into Your Account",
                    style: regularTextStyle.copyWith(
                        fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: 8,
                  ),

                  // Text field

                  SizedBox(
                    height: 70,
                  ),
                  Container(
                      child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
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
                              //controller: emailController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email Address',
                                hintStyle: LightTextStyle.copyWith(
                                    fontSize: 15, color: greylightColor),
                              )),
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
                              text: "Login",
                              onTap: () async {
                                if (_formkey.currentState!.validate()) {
                                  // dynamic result = await _authService
                                  //     .signInWithEmailAndPassword(
                                  //         email, password);
                                  // if (result == null) {
                                  //   setState(() => error =
                                  //       'Could not sign in with this email ');
                                  // }
                                  print(email);
                                  print(password);
                                }
                                //widget.toggleView();
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DrPage()),
                                    (route) => false);
                              },
                            )),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          error,
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Text(
                        //       "Don't have an account ?",
                        //       style: LightTextStyle.copyWith(
                        //           color: greylightColor, fontSize: 15),
                        //     ),
                        //     // InkWell(
                        //     //   onTap: () {
                        //     //     Navigator.pushAndRemoveUntil(
                        //     //         context,
                        //     //         MaterialPageRoute(
                        //     //             builder: (context) => RegisterPage()),
                        //     //         (route) => false);
                        //     //   },
                        //     // ),
                        //     Text(
                        //       " Create account",
                        //       style: LightTextStyle.copyWith(
                        //           color: greenColor, fontSize: 15),
                        //     )
                        //   ],
                        // )
                      ],
                    ),
                  ))
                ],
              )),
        ]),
      ),
    );
  }
}
