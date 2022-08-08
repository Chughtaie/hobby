import 'package:flutter/material.dart';
import 'package:hobby_garage/Auth/LoginScreen.dart';
import 'package:hobby_garage/Auth/authScreen.dart';
import 'package:hobby_garage/Components/textButton.dart';
import 'package:hobby_garage/Providers/authScreenProvider.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  static const id = 'SplashScreen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: secondColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: primeColor,
                          borderRadius: const BorderRadius.vertical(
                              bottom: Radius.circular(30))),
                      padding: EdgeInsets.only(
                          top: height * (2 / 25), bottom: height * (10 / 925)),
                      width: width,
                      height: height * (700 / 925),
                      child: Column(children: [
                        SizedBox(
                          width: width * (380 / 425),
                          //padding: kPadding,
                          child: Column(
                            children: [
                              Text(
                                'Hobby Garage',
                                style: kstyle.copyWith(
                                    fontSize: width * (65 / 425),
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: kPadding,
                                width: width * (300 / 425),
                                child: KText(
                                  text:
                                      'Loram Ipsem Dolor Sit Amere is just a demmu text.',
                                  style: h4,
                                ),
                              )
                            ],
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: kCircleBox.copyWith(
                                color: const Color.fromARGB(255, 198, 200, 204),
                              ),
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                decoration: kCircleBox.copyWith(
                                  color: const Color(0xff95989D),
                                ),

                                //alignment: Alignment.centerRight,
                                height: height * (800 / 925),
                                width: width * (320 / 425),
                                child: Lottie.asset(
                                  'assets/lottie/lf30_editor_ell3jt8k.json',
                                  //width: screenSize.width * (700 / 925),
                                  repeat: true,
                                  reverse: false,
                                  animate: true,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
              child: KTextButton(
                label: 'Get Started',
                onTap: () {
                  Provider.of<AuthScreenProvider>(context, listen: false)
                      .onTap = () {
                    Navigator.pushReplacementNamed(context, LoginScreen.id);
                  };
                  Navigator.pushNamed(context, AuthScreen.id);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
