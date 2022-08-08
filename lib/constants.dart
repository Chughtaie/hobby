import 'package:flutter/material.dart';

Color secondColor = const Color(0xffE68231);
Color primeColor = const Color(0xff213449);

EdgeInsets kPadding = const EdgeInsets.symmetric(vertical: 35, horizontal: 25);

TextStyle kstyle = const TextStyle(color: Colors.white);
TextStyle h6 = const TextStyle(color: Colors.white, fontSize: 5);
TextStyle h5 = const TextStyle(color: Colors.white, fontSize: 10);
TextStyle h4 = const TextStyle(color: Colors.white, fontSize: 20);
TextStyle h3 = const TextStyle(color: Colors.white, fontSize: 30);
TextStyle h2 = const TextStyle(color: Colors.white, fontSize: 40);
TextStyle h1 = const TextStyle(color: Colors.white, fontSize: 50);

BorderRadius borderRadius = BorderRadius.circular(5);

BoxDecoration boxDecoration = BoxDecoration(borderRadius: borderRadius);
Radius radius = const Radius.circular(10);

BoxDecoration kCircleBox = const BoxDecoration(shape: BoxShape.circle);

class KText extends StatelessWidget {
  String text;
  TextStyle style;
  KText(
      {Key? key,
      this.text = 'Constant Text',
      this.style = const TextStyle(color: Colors.white, fontFamily: 'Arial')})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      style: style,
    );
  }
}
