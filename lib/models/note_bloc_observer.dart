import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteAppBlocObserver implements BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint("Bloc has been Changed State  $change");
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("Bloc has been closed  $bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("Bloc has been Created  $bloc");
  }

  @override
  void onDone(Bloc bloc, Object? event, [Object? error, StackTrace? stackTrace]) {
    // TODO: implement onDone
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }

}