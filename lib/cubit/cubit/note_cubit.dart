import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  Future<void> addNote(NoteModel note)async{
    emit(LoadingAddNoteState());   
    try {
        var noteBox =await Hive.openBox("Notes_Box");
        await noteBox.add(note);
        emit(SuccesfullAddNoteState());
    } catch (e) {
        emit(failedAddNoteState(e.toString()));
    }

  }
}
