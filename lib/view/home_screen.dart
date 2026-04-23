import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/cubit/note_cubit.dart';
import 'package:notes_app/view/widgets/custom_appbar.dart';
import 'package:notes_app/view/widgets/custom_floatingAction_button.dart';
import 'package:notes_app/view/widgets/notes_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => NoteCubit()..getAllNotes(),
        child: Scaffold(
          backgroundColor: Color(0xff2F2F2E),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [Custom_AppBar(), SizedBox(height: 16), NotesView()],
            ),
          ),
          floatingActionButton: CustomFloatingActionBottom(),
        ),
      ),
    );
  }
}
