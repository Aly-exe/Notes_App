import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/view/widgets/custom_appbar.dart';
import 'package:notes_app/view/widgets/custom_floatingAction_button.dart';
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
              const CustomAppBar(title: "Note", icon: FontAwesomeIcons.search),
              const SizedBox(height: 16),
              NotesView(),
            ],
          ),
        ),
        floatingActionButton: const CustomFloatingActionBottom(),
      ),
    );
  }
}
