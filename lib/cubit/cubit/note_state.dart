part of 'note_cubit.dart';


class NoteState {}

final class NoteInitial extends NoteState {}
final class LoadingAddNoteState extends NoteState {}
final class SuccesfullAddNoteState extends NoteState {}
final class failedAddNoteState extends NoteState {
    final String? errorMessage;
    failedAddNoteState(this.errorMessage);
}
final class LoadingEditNoteState extends NoteState {}
final class SuccesfullEditNoteState extends NoteState {}
final class failedEditNoteState extends NoteState {
    final String? errorMessage;
    failedEditNoteState(this.errorMessage);
}
final class SuccessGetAllNotes extends NoteState {}
final class SuccesDeleteNoteState extends NoteState {}
final class failedDeleteNoteState extends NoteState {
    final String? errorMessage;
    failedDeleteNoteState(this.errorMessage);
}
