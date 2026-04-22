import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/colors.dart';
import 'package:notes_app/view/widgets/bottom_sheet_form.dart';

class CustomFloatingActionBottom extends StatelessWidget {
  const CustomFloatingActionBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      color: kSecondaryColor ,
      borderRadius: BorderRadius.circular(36)
    ) , child: IconButton(onPressed: (){
      showModalBottomSheet(
        isScrollControlled: true,
        context: context, builder: (context){
        return BottomSheetForm();
      });
    }, icon: FaIcon(FontAwesomeIcons.add , color: Colors.black,)));
  }
}
