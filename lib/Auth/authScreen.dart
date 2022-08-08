import 'package:flutter/material.dart';
import 'package:hobby_garage/Auth/ForgotPassword/emailScreen.dart';
import 'package:hobby_garage/Components/textButton.dart';
import 'package:hobby_garage/Providers/authScreenProvider.dart';
import 'package:hobby_garage/constants.dart';
import 'package:provider/provider.dart';

import '../Components/inputField.dart';
import 'AuthMainScreenTemplate.dart';

class Linkers {
  late Widget widget;
  late String name;
  late String link;
  late Color color;
  late Color textColor;
  Linkers.values(Widget? widget, String? name, String? link, Color? color,
      Color? textColor) {
    this.widget = widget ?? Container();
    this.color = color ?? primeColor;
    this.link = link ?? '';
    this.name = name ?? 'Title';
    this.textColor = textColor ?? Colors.white;
  }

  Linker() {
    widget = Icon(Icons.abc);
    name = 'pookiDevs';
    link = '';
    color = Colors.white;
  }
}

class AuthScreen extends StatefulWidget {
  static const id = 'AuthScreen';
  final int totalFields;
  const AuthScreen({Key? key, this.totalFields = 3}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  _AuthScreenState({Key? key});

  final _formKey = GlobalKey<FormState>();
  late List<TextEditingController> myController;
  late String navigatioLabel; // 'Login';
  late List<String> hints; // = ['Full Name', 'Email', 'Password'];
  late String title; // 'Create Account';

  List<Linkers> linkers = [
    Linkers.values(Image(image: AssetImage('assets/image/google-logo.png')),
        "Google", '', Colors.white, Colors.black),
    Linkers.values(
        Icon(
          Icons.facebook_outlined,
          color: Colors.white,
        ),
        'FaceBook',
        '',
        Colors.blue,
        Colors.white),
  ];

  @override
  void initState() {
    super.initState();
    myController =
        Provider.of<AuthScreenProvider>(context, listen: false).myController;
    navigatioLabel =
        Provider.of<AuthScreenProvider>(context, listen: false).navigationLabel;
    hints = Provider.of<AuthScreenProvider>(context, listen: false).hints;
    title = Provider.of<AuthScreenProvider>(context, listen: false).title;
  }

  @override
  Widget build(BuildContext context) {
    Color theColor = Colors.white;

    return AuthMainScreenTemplate(
      myWidget: Form(
        key: _formKey,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.close, color: Colors.white)),
                GestureDetector(
                  onTap: Provider.of<AuthScreenProvider>(context, listen: true)
                      .onTap,
                  child: KText(
                    text: navigatioLabel,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: KText(
                text: title,
                style: h3.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            KText(
              text: 'Loram Ipsem dolor sit amere',
              style: h4.copyWith(fontWeight: FontWeight.w300),
            ),
            Column(
              children: List<Widget>.generate(
                hints.length,
                (index) => InputField(
                  userInput: myController[index],
                  hint: hints[index],
                ),
              ),
            ),
            if (navigatioLabel == 'SignUp')
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  KTextButton(
                    onTap: () {
                      Navigator.pushNamed(context, EmailScreen.id);
                    },
                    label: 'Forgot Password ?',
                    fontSize: 12,
                  ),
                ],
              ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  KTextButton(
                    boxColor: secondColor,
                    label: 'Join Us',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * (220 / 425),
                //height: 10,
                child: KText(
                  text:
                      'By continuing, you agree to accept our Privacy Policy & Terms of Service.',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 0.5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: KText(
                      text: 'OR',
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: linkers
                  .map((e) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: KTextButton(
                          boxColor: e.color,
                          widget: e.widget,
                          label: 'LOG IN WITH ' + e.name.toUpperCase(),
                          textColor: e.textColor,
                          fontSize: 15,
                          onTap: () {
                            AlertDialog(
                              content: Container(
                                  padding: EdgeInsets.all(10),
                                  child:
                                      Text(' Hurray! ${e.name} is Pressed ')),
                            );
                            print(' Hurray! ${e.name} is Pressed ');
                          },
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
