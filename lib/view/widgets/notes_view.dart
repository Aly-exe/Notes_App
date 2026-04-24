import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/note_box.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = context.read<NoteCubit>().notes;
        return Expanded(
          child: notes.length >= 1
              ? ListView.builder(
                  itemCount: notes.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: NoteBox(
                      note: notes[index],
                      color: notes[index].color!,
                      date: notes[index].date!,
                      subtitle: notes[index].subtitle!,
                      title: notes[index].title!,
                    ),
                  ),
                )
              :  Center(
                  child: Text(
                    "No Notes Yet !",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
        );
      },
    );
  }
}
