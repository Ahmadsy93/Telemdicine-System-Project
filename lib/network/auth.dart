// ignore_for_file: unused_local_variable, unnecessary_null_comparison

import 'package:firebase_auth/firebase_auth.dart';
import 'package:telemedicine/network/database.dart';
import 'package:telemedicine/network/model/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  get user => null;

  // Create user obj based on USer
  UserName? _userFromUser(User user) {
    return user != null ? UserName(uid: user.uid) : null;
  }

  // Auth change user stream

  // Sing in

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromUser(user!);

      // ignore: empty_catches
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sing in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;

      // Create
      await DatabaseService(uid: user!.uid).updateUserData(
        password,
        email,
      );
      return _userFromUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  // sign out

}
