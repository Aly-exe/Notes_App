import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/colors.dart';
import 'package:notes_app/cubit/cubit/note_cubit.dart';
import 'package:notes_app/view/widgets/bottom_sheet_form.dart';
class CustomFloatingActionBottom extends StatelessWidget {
  const CustomFloatingActionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(36),
      ),
      child: IconButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            scrollControlDisabledMaxHeightRatio:
                MediaQuery.of(context).size.height * .8,
            showDragHandle: true,
            useSafeArea: true,
            sheetAnimationStyle: AnimationStyle(
              duration: Duration(milliseconds: 700),
              curve: Curves.easeInOut,
            ),
            context: context,
            builder: (bottomsheetcontxet) {
              return BlocProvider.value(
                value: context.read<NoteCubit>(),
                child: BottomSheetForm(),
              );
            },
          );
        },
        icon: FaIcon(FontAwesomeIcons.add, color: Colors.black),
      ),
    );
  }
}
