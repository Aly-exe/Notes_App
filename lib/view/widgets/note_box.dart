
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/colors.dart';

class NoteBox extends StatelessWidget {
  const NoteBox({
    super.key,
  });

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
              child: Text("Flutter tips" , style: TextStyle(
                color: Colors.black ,
                fontSize: 26,
              ),),
            ),
            subtitle: Padding(            
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text("Build Your Career with Aly Raslan" , style: TextStyle(
                fontSize: 18 ,
                color: Color.fromARGB(255, 112, 111, 73)
              ),),
            ),
            trailing: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.trash , color: Colors.black, size: 30,)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("April 21 , 2026" , style: TextStyle(color:Color.fromARGB(255, 112, 111, 73)),),
            ],
          )
        ],
      )
    );
  }
}