import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/note_box.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:ListView.builder(
        itemBuilder: (context , index)=>Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: NoteBox(),
        ))
    );
  }
}
