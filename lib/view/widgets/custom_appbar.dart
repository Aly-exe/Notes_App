
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart' show FontAwesomeIcons, FaIcon;

class Custom_AppBar extends StatelessWidget {
  const Custom_AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes" , style: TextStyle(
          fontSize: 26 ,
        ),) ,
        Spacer() ,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withOpacity(.05),
          ),
          child:IconButton(onPressed: (){}, icon:FaIcon(
            FontAwesomeIcons.search
          ))
        )
      ],
    );
  }
}