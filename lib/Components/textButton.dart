import 'package:flutter/material.dart';
import 'package:hobby_garage/constants.dart';

class KTextButton extends StatelessWidget {
  final Widget? widget;
  final Color? boxColor;
  final Color? textColor;
  final String label;
  final double fontSize;
  final Function()? onTap;
  KTextButton(
      {Key? key,
      this.boxColor = const Color(0xff213449),
      this.textColor = Colors.white,
      this.label = 'Text Button',
      this.fontSize = 20,
      this.onTap,
      this.widget = null})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: boxDecoration.copyWith(
          color: boxColor,
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget != null)
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: SizedBox(
                    child: widget,
                    height: 20,
                  )),
            KText(
              text: label,
              style: kstyle.copyWith(fontSize: fontSize, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
