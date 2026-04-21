
import 'package:flutter/material.dart';
import 'package:notes_app/core/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(8.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text("Add" ,textAlign: TextAlign.center, style: TextStyle(color: Colors.black ,fontSize: 16),),
      ),
    );
  }
}

