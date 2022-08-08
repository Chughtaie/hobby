import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../Components/textButton.dart';
import '../../constants.dart';
import 'forgotScreenTemplate.dart';
import 'newPassword.dart';

class SmsCodeScreen extends StatelessWidget {
  static const id = 'SmsCodeScreen';
  const SmsCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var hasError = false;

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
                'Enter the code that has been sent to your email address',
                style: kstyle.copyWith(
                    fontSize: 20, height: 1.7, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: PinCodeTextField(
                  appContext: context,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  textStyle: const TextStyle(
                      fontSize: 35,
                      height: 1.6,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                  animationType: AnimationType.fade,
                  length: 4,
                  cursorColor: Colors.white,
                  pinTheme: PinTheme(
                    inactiveColor: Color(0xff323b58),
                    disabledColor: Color(0xff323b58),
                    errorBorderColor: Color(0xff323b58),
                    inactiveFillColor: (secondColor),
                    selectedColor: secondColor,

                    shape: PinCodeFieldShape.box,
                    activeColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(0),
                    fieldHeight: 60,
                    fieldWidth: 50,
                    // selectedFillColor: Color(0xff323b58),
                    activeFillColor: hasError ? Colors.red : Colors.white,
                  ),
                  onChanged: (String value) {},
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KText(
                  text: 'Send another code',
                  style: TextStyle(color: secondColor, fontSize: 17),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: KTextButton(
                onTap: () {
                  Navigator.pushReplacementNamed(context, NewPasswordScreen.id);
                },
                label: 'Next',
                boxColor: secondColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
