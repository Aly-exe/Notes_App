import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_text_button.dart';
import 'package:notes_app/view/widgets/custom_text_form_field.dart';

class BottomSheetForm extends StatefulWidget {
  const BottomSheetForm({
    super.key,
  });

  @override
  State<BottomSheetForm> createState() => _BottomSheetFormState();
}

class _BottomSheetFormState extends State<BottomSheetForm> {
  final  GlobalKey<FormState> formkey =GlobalKey();
  bool autovalidateMode = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0 , right: 16.0 ,top: 16.0 , bottom: MediaQuery.of(context).viewInsets.bottom+10),
      child: SingleChildScrollView(
        child: Form(
          key:formkey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: "title",
              ),
              const SizedBox(height: 10,),
              CustomTextFormField(
                hintText: "content",
                maxLines: 4,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.18,),
              const CustomTextButton()
            ],
          ),
        ),
      ),
    );
  }
}