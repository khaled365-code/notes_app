import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/notes_cubit/load_notes_cubit.dart';
import 'package:quickalert/quickalert.dart';
import '../cubits/add_note/add_note_cubit.dart';
import 'custom_button.dart';
import 'custom_textfield.dart';
import 'form_widget.dart';


class Modalbuttomsheet extends StatefulWidget {


  @override
  State<Modalbuttomsheet> createState() => _ModalbuttomsheetState();
}

class _ModalbuttomsheetState extends State<Modalbuttomsheet> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            BlocProvider.of<LoadNotesCubit>(context).fetch();
            Navigator.pop(context);
          }
          if (state is AddNoteFailure)
          {

          }
        },
        builder: (context, state) {
          return AbsorbPointer (
            absorbing: state is AddNoteLoading? true:false,
              child: Formwidget());
        },
      ),
    );
  }


}
