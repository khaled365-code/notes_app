import 'package:date_formatter/date_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_button.dart';
import 'custom_textfield.dart';


class Formwidget extends StatefulWidget {


  @override
  State<Formwidget> createState() => _FormwidgetState();
}

class _FormwidgetState extends State<Formwidget> {
  var checkDataKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: checkDataKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding:  EdgeInsets.only(top: 25, left: 20, right: 20,bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Customtextfield(hintText: 'Title',
                onsaved: (value) {
                  title = value;
                },
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'this field is required';
                  } else {
                    return null;
                  }
                },

              ),
              SizedBox(height: 30,),
              Customtextfield(hintText: 'content', maxlines: 5,
                onsaved: (value) {
                  subTitle = value;
                },
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'this field is required';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 30,),
              BlocBuilder<AddNoteCubit, AddNoteState>(
                builder: (context, state) {
                  var formatedDate=DateFormatter.formatDateTime(
                    dateTime: DateTime.now(),
                    outputFormat: 'dd/MM/yyyy',
                  );
                  return Custombutton(
                    isLoading: state is AddNoteLoading? true:false,
                    onTap: () {
                      if (checkDataKey.currentState!.validate()) {
                        checkDataKey.currentState!.save();
                        var notemodel = Notemodel(title: title!,
                            subTitle: subTitle!,
                            date: formatedDate,
                            color: Colors.greenAccent.value);
                        BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                      }
                      else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {

                        });
                      }
                    },
                  );
                },
              ),


            ],
          ),
        ),

      ),
    );
  }
}
