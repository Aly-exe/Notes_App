import 'package:flutter/material.dart';
import 'package:notes_app/core/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines,
    this.onSaved,
    this.validate,
    this.onChanged,
  });
  final int? maxLines;
  final String? hintText;
  final Function(String?)? onSaved;
  final String? Function(String?)? validate;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: kSecondaryColor),
    );
    var errorOutlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
    );
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: validate,
      maxLines: maxLines ?? 1,
      cursorColor: kSecondaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kSecondaryColor),
        border: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        errorBorder: errorOutlineInputBorder,
        focusedErrorBorder: errorOutlineInputBorder,
      ),
    );
  }
}
