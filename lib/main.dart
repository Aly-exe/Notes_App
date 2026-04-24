import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/models/note_bloc_observer.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = NoteAppBlocObserver();
  await Hive.initFlutter();
    Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>("Notes_Box");
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notes App",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(fontFamily: "Poppins", brightness: Brightness.dark),
    );
  }
}
