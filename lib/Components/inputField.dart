import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.userInput,
    this.theColor = Colors.white,
    this.hint = 'Hint',
  }) : super(key: key);

  final TextEditingController userInput;
  final String hint;
  final Color theColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: userInput,

        style: TextStyle(
          fontSize: 20,
          color: theColor,
        ),
        // onChanged: (value) {
        //   // setState(() {
        //   //   //print(userInput.text + value);
        //   //   // userInput.text = value.toString();
        //   //   print(userInput.text);
        //   //   print('o');
        //   // });
        // },
        decoration: InputDecoration(
          // floatingLabelBehavior: FloatingLabelBehavior.al,

          focusColor: theColor,
          //add prefix icon
          // prefixIcon: Icon(
          //   Icons.person_outline_rounded,
          //   color: Colors.grey,
          // ),

          //  errorText: "Error",

          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10.0),
          // ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: theColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: theColor),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: theColor),
          ),
          // focusedBorder: OutlineInputBorder(
          //   borderSide: Border.,
          // //  borderRadius: BorderRadius.circular(10.0),
          // ),
          fillColor: Colors.grey,

          hintText: hint,

          //make hint text
          hintStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),

          //create lable
          labelText: hint,
          //lable style
          labelStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
