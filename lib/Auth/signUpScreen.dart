import 'package:flutter/material.dart';
import 'package:hobby_garage/Auth/authScreen.dart';
import 'package:hobby_garage/Providers/authScreenProvider.dart';
import 'package:provider/provider.dart';

import 'LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  static const id = 'SignUpScreen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  _SignUpScreenState({Key? key});

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then((value) {
      setData();
      // Navigator.pushReplacementNamed(context, AuthScreen.id);
    });
  }

  setData() {
    Provider.of<AuthScreenProvider>(context, listen: false)
        .setHints(['Full Name', 'Email', 'Password']);
    Provider.of<AuthScreenProvider>(context, listen: false)
        .setTitle('Create Account');
    Provider.of<AuthScreenProvider>(context, listen: false).setNav('Login');
    Provider.of<AuthScreenProvider>(context, listen: false).onTap = () {
      Navigator.pushNamed(context, LoginScreen.id);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        //setData();
        Navigator.pushNamed(context, AuthScreen.id);
      },
      child: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.amber,
          child: Text('Login'),
        ),
      ),
    ));
  }
}
