import 'package:flutter/material.dart';
import 'package:notes_app/view/home_screen.dart';

void main (){
  WidgetsFlutterBinding.ensureInitialized();
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
      theme: ThemeData(
        fontFamily: "Poppins" ,
        brightness: Brightness.dark
      ),
    );
  }
}