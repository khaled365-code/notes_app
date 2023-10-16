part of 'load_notes_cubit.dart';

@immutable
abstract class LoadNotesState {}

class LoadNotesInitial extends LoadNotesState {}
class NotesSuccess extends LoadNotesState {

  final List<Notemodel> notes;

  NotesSuccess({required this.notes});

}
class Notesfailure extends LoadNotesState {
  final String errorMessage;

  Notesfailure({required this.errorMessage});


}

