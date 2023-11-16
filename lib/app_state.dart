import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ApplicationState with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;
  bool get isLoggedIn => _user != null;

  Future<void> signInAnonymously() async {
    try {
      await _auth.signInAnonymously();
      _user = _auth.currentUser;
      notifyListeners();
    } catch (e) {
      print("Error during anonymous login: $e");
    }
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}
