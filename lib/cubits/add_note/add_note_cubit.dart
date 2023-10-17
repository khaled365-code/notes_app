import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

import '../../constants/constants.dart';
import '../../models/note_model.dart';
import 'package:flutter/material.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color? noteColor;
  addNote(Notemodel note) async
  {
       emit(AddNoteLoading());
       try
       {
         note.color=noteColor!.value;
         var notesBox=Hive.box<Notemodel>(kHiveBox);
         await notesBox.add(note);
         emit(AddNoteSuccess());

       }catch (e)
    {
      emit(AddNoteFailure(errorMessage: e.toString()));
    }


  }
}
