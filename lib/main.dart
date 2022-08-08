import 'package:flutter/material.dart';
import 'package:hobby_garage/Auth/splashScreen.dart';
import 'package:hobby_garage/Providers/authScreenProvider.dart';
import 'package:provider/provider.dart';

import 'Auth/ForgotPassword/emailScreen.dart';
import 'Auth/ForgotPassword/smsCodeScreen.dart';
import 'Auth/LoginScreen.dart';
import 'Auth/authScreen.dart';
import 'Auth/signUpScreen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

void main() async {
  if (kIsWeb) {
    // initialiaze the facebook javascript SDK
    await FacebookAuth.instance.webInitialize(
      appId: "587192363036178",
      cookie: true,
      xfbml: true,
      version: "v13.0",
    );
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AuthScreenProvider authScreenProvider = AuthScreenProvider();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthScreenProvider>(
            create: (context) => authScreenProvider),
      ],
      child: MaterialApp(
          title: 'Hobby Garage',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: SplashScreen.id,
          routes: {
            SplashScreen.id: (context) => const SplashScreen(),
            AuthScreen.id: (context) => const AuthScreen(),
            LoginScreen.id: (context) => const LoginScreen(),
            SignUpScreen.id: (context) => const SignUpScreen(),
            EmailScreen.id: (context) => EmailScreen(),
            SmsCodeScreen.id: (context) => const SmsCodeScreen(),
          }
          //home: const MyHomePage(title: 'Flutter Demo Home Page'),
          ),
    );
  }
}
