import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextInputType textInputType;
  final TextEditingController controller;

  const TextFieldWidget({@required this.controller,@required this.hintText, this.isPassword = false, this.textInputType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10,),
          TextField(
            controller: controller,
            maxLines: 1,
            keyboardType: textInputType,
            obscureText: isPassword,
            decoration: InputDecoration(
              hintText: hintText
            ),
          ),
        ],
      ),
    );
  }
}
