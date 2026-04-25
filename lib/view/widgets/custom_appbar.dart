import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FaIcon, FaIconData;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });
  final String title;
  final FaIconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 26)),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withOpacity(.05),
          ),
          child: IconButton(onPressed: onPressed, icon: FaIcon(icon)),
        ),
      ],
    );
  }
}
