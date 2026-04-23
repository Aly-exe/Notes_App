import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocConsumer, ReadContext;
import 'package:intl/intl.dart' show DateFormat;
import 'package:notes_app/cubit/cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/custom_circular_progress_indicator.dart';
import 'package:notes_app/view/widgets/custom_text_button.dart';
import 'package:notes_app/view/widgets/custom_text_form_field.dart';

class BottomSheetForm extends StatefulWidget {
  const BottomSheetForm({super.key});

  @override
  State<BottomSheetForm> createState() => _BottomSheetFormState();
}

class _BottomSheetFormState extends State<BottomSheetForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
        bottom: MediaQuery.of(context).viewInsets.bottom + 10,
      ),
      child: SingleChildScrollView(
        child: BlocConsumer<NoteCubit, NoteState>(
          listener: (context, state) {
            if (state is SuccesfullAddNoteState) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return Form(
              key: formkey,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  CustomTextFormField(
                    hintText: "title",
                    onSaved: (value) {
                      title = value;
                    },
                    validate: (value) {
                      if (value?.isEmpty ?? true) {
                        return "Title Must be filled";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    hintText: "content",
                    maxLines: 4,
                    onSaved: (value) {
                      subtitle = value;
                    },
                    validate: (value) {
                      if (value?.isEmpty ?? true) {
                        return "Content Must be filled";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .18),
                  state is LoadingAddNoteState
                      ? CustomCircularProgressIndicator()
                      : CustomTextButton(
                          onTap: () async {
                            if (formkey.currentState!.validate()) {
                              formkey.currentState!.save();
                              NoteModel note = NoteModel(
                                title: title,
                                subtitle: subtitle,
                                date: DateFormat(
                                  'yyyy MMM dd',
                                ).format(DateTime.now()),
                                color: Colors.red.toARGB32(),
                              );
                              await context.read<NoteCubit>().addNote(note);
                            } else {
                              autovalidateMode = AutovalidateMode.always;
                              setState(() {});
                            }
                          },
                        ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
