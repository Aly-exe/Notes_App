import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/colors.dart';
import 'package:notes_app/cubit/cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class NoteBox extends StatelessWidget {
  const NoteBox({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color, required this.note,
  });
  final String title, subtitle, date;
  final int color;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                subtitle,
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 112, 111, 73),
                ),
              ),
            ),
            trailing: BlocBuilder<NoteCubit, NoteState>(
              builder: (context, state) {
                return IconButton(
                  onPressed: () async{
                    // await note.delete();
                    context.read<NoteCubit>().deleteOneNote(note);
                    context.read<NoteCubit>().getAllNotes;
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 30,
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                date,
                style: TextStyle(color: Color.fromARGB(255, 112, 111, 73)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
