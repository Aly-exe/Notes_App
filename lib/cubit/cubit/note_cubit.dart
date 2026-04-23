import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/models/note_model.dart';
part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  static NoteCubit get(context) => BlocProvider.of(context);
    List<NoteModel> notes = [];

  Future<void> addNote(NoteModel note) async {
    emit(LoadingAddNoteState());
    try {
      var noteBox = Hive.box<NoteModel>("Notes_Box");
      await noteBox.add(note);
      emit(SuccesfullAddNoteState());
      getAllNotes();
    } catch (e) {
      emit(failedAddNoteState(e.toString()));
    }
  }

  void getAllNotes(){
    var noteBox = Hive.box<NoteModel>("Notes_Box");
    notes = noteBox.values.toList();
    emit(SuccessGetAllNotes());
  }

  Future deleteNote(dynamic note) async {
    var noteBox = Hive.box<NoteModel>("Notes_Box");
    try {
      await noteBox.delete(note);

      getAllNotes();
      emit(SuccesDeleteNoteState());
    } catch (e) {
      emit(failedDeleteNoteState(e.toString()));
    }
  }
}
