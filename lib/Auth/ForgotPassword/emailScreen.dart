import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hobby_garage/Auth/ForgotPassword/smsCodeScreen.dart';
import 'package:hobby_garage/Components/inputField.dart';
import 'package:hobby_garage/Components/textButton.dart';

import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';
import 'forgotScreenTemplate.dart';

class EmailScreen extends StatelessWidget {
  static const id = 'EmailScreen';
  TextEditingController _controller = TextEditingController();
  EmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ForgotScreenTemplate(
      widget: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * (1 / 5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KText(
              text: 'Enter your email address',
              style: kstyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: InputField(
                userInput: _controller,
                hint: 'Email',
              ),
            ),
            SizedBox(
              width: 160,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'By continuing, I confirm I have read the',
                      style: kstyle.copyWith(fontSize: 12),
                    ),
                    TextSpan(
                      text: ' Privacy Policy',
                      style: TextStyle(
                          height: 1.4, color: secondColor, fontSize: 12),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          //Code to launch your URL
                        },
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: KTextButton(
                onTap: () {
                  Navigator.pushNamed(context, SmsCodeScreen.id);
                },
                label: 'AGREE AND CONTINUE',
                boxColor: secondColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
