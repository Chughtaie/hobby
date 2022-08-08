import 'package:flutter/material.dart';
import 'package:hobby_garage/constants.dart';

class AuthMainScreenTemplate extends StatelessWidget {
  final Widget myWidget;
  AuthMainScreenTemplate({required this.myWidget});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primeColor,
        body: SingleChildScrollView(
          child: Padding(
              padding: kPadding.copyWith(top: 30),
              child: Expanded(child: Container(child: myWidget))),
        ),
      ),
    );
  }
}
