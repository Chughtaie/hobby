import 'package:flutter/material.dart';

import '../AuthMainScreenTemplate.dart';

class ForgotScreenTemplate extends StatelessWidget {
  final Widget widget;
  const ForgotScreenTemplate({Key? key, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthMainScreenTemplate(
        myWidget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: widget,
        )
      ],
    ));
  }
}
