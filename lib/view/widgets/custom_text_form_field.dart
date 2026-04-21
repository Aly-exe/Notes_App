import 'package:flutter/material.dart';
import 'package:notes_app/core/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines
  });
  final int? maxLines;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0) ,
          borderSide: BorderSide(
            color: kSecondaryColor
          )
        );
    return TextFormField(
      maxLines:maxLines?? 1,
      cursorColor: kSecondaryColor,
      decoration: InputDecoration(
        hintText: hintText ,
        hintStyle: TextStyle(
          color: kSecondaryColor
        ),
        border: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder
      ),
    );
  }
}
