import 'package:flutter/material.dart';
import 'package:hobby_garage/Auth/authScreen.dart';
import 'package:hobby_garage/Providers/authScreenProvider.dart';
import 'package:provider/provider.dart';

import 'signUpScreen.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  _LoginScreenState({Key? key});

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then((value) {
      setData();
      Future.delayed(Duration.zero).then((value) {});
    });
  }

  setData() {
    Provider.of<AuthScreenProvider>(context, listen: false)
        .setHints(['Email', 'Password']);
    Provider.of<AuthScreenProvider>(context, listen: false)
        .setTitle('Welcome Back');
    Provider.of<AuthScreenProvider>(context, listen: false).setNav('SignUp');
    Provider.of<AuthScreenProvider>(context, listen: false).onTap = () {
      Navigator.pushReplacementNamed(context, SignUpScreen.id);
    };
  }

  @override
  Widget build(BuildContext context) {
    //Navigator.pushReplacementNamed(context, AuthScreen.id);
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
