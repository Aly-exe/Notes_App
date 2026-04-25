import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubit/cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/custom_appbar.dart';
import 'package:notes_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2F2F2E),
        body: BlocProvider.value(
          value: BlocProvider.of<NoteCubit>(context),
          child:BlocConsumer<NoteCubit, NoteState>(
            listener: (context,state){
                if(state is SuccesfullEditNoteState){
                    Navigator.pop(context);
                } 
            },
            builder: (contxet,state){
             return Container(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                CustomAppBar(
                  title: "Edit Note",
                  icon: FontAwesomeIcons.check,
                  onPressed: ()async {
                    widget.note.title = title ?? widget.note.title;
                    widget.note.subtitle = content ?? widget.note.subtitle;
                    await BlocProvider.of<NoteCubit>(context).editNote(widget.note);
                  },
                ),
                SizedBox(height: 20),
                CustomTextFormField(
                  hintText: "title",
                  onChanged: (value) {
                    title = value;
                  },
                ),
                SizedBox(height: 10),
                CustomTextFormField(
                  hintText: "content",
                  maxLines: 4,
                  onChanged: (value) {
                    content = value;
                  },
                ),
              ],
            ),
          );
          },
           
          )
           
        ),
      ),
    );
  }
}
