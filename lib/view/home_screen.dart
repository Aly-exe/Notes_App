import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/colors.dart';
import 'package:notes_app/view/widgets/custom_appbar.dart';
import 'package:notes_app/view/widgets/custom_text_button.dart';
import 'package:notes_app/view/widgets/custom_text_form_field.dart';
import 'package:notes_app/view/widgets/notes_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2F2F2E),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Custom_AppBar(),
              SizedBox(height: 16,),
              NotesView(),
            ],
          ),
        ) ,
        floatingActionButton: CustomFloatingActionBottom(),
      ),
    );
  }
}

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
      showModalBottomSheet(context: context, builder: (context){
        return BottomSheetForm();
      });
    }, icon: FaIcon(FontAwesomeIcons.add , color: Colors.black,)));
  }
}

class BottomSheetForm extends StatefulWidget {
  const BottomSheetForm({
    super.key,
  });

  @override
  State<BottomSheetForm> createState() => _BottomSheetFormState();
}

class _BottomSheetFormState extends State<BottomSheetForm> {
  final  GlobalKey<FormState> formkey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key:formkey,
        child: Column(
          children: [
            CustomTextFormField(
              hintText: "title",
            ),
            SizedBox(height: 10,),
            CustomTextFormField(
              hintText: "content",
              maxLines: 4,
            ),
            Spacer(),
            CustomTextButton()
          ],
        ),
      ),
    );
  }
}
