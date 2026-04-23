
import 'package:flutter/material.dart';
import 'package:notes_app/core/colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: CircularProgressIndicator(color: kSecondaryColor),
      ),
    );
  }
}
