import 'package:flutter/material.dart';

import '../../Components/textButton.dart';
import '../../constants.dart';
import 'forgotScreenTemplate.dart';

class NewPasswordScreen extends StatelessWidget {
  static const id = 'NewPasswordScreen';
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ForgotScreenTemplate(
      widget: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * (1 / 5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Text(
                'Enter your new password',
                style: kstyle.copyWith(
                    fontSize: 20, height: 1.7, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: KTextButton(
                label: 'Reset Password',
                boxColor: secondColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
