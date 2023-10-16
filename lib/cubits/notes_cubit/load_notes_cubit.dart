import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constants/constants.dart';

part 'load_notes_state.dart';

class LoadNotesCubit extends Cubit<LoadNotesState> {
  LoadNotesCubit() : super(LoadNotesInitial());

 List<Notemodel>? notes;
  fetch()
  {
      var notesBox = Hive.box<Notemodel>(kHiveBox);
      notes = notesBox.values.toList();


  }
}
