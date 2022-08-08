import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_garage/Auth/LoginScreen.dart';

class AuthScreenProvider extends ChangeNotifier {
  String title = 'Create Account';
  late List<TextEditingController> myController;
  String navigationLabel = 'Login';
  List<String> hints = ['Full Name', 'Email', 'Password'];
  Function()? onTap;

  AuthScreenProvider() {
    myController = List.generate(hints.length, (i) => TextEditingController());
    notifyListeners();
  }

  setHints(List<String> source) {
    hints = source;
    print(source);
    myController = List.generate(hints.length, (i) => TextEditingController());
    notifyListeners();
  }

  setNav(String source) {
    navigationLabel = source;
    notifyListeners();
  }

  setTitle(String source) {
    title = source;
    notifyListeners();
  }
}
