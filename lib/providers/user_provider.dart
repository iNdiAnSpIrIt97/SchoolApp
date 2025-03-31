import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/models/user.dart';

class UserProvider with ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  Future<void> setUser(User firebaseUser) async {
    try {
      final doc = await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseUser.uid)
          .get();
      if (doc.exists) {
        _user = UserModel.fromMap(doc.data()!);
        notifyListeners();
      } else {
        print('No user document found for UID: ${firebaseUser.uid}');
      }
    } catch (e) {
      print('Error setting user: $e');
    }
  }

  void clearUser() {
    _user = null;
    notifyListeners();
  }
}
