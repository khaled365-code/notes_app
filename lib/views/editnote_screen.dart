
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/load_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

import '../widgets/colors_listview.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/editcolor_listview.dart';
import '../widgets/note_item.dart';

class Editnotescreen extends StatelessWidget {


  static String id='EditNotescreen';


  final Notemodel note;
  Editnotescreen({super.key, required this.note});
  @override
  Widget build(BuildContext context) {

   return Scaffold(
     body: Padding(
       padding:  EdgeInsets.only(left: 20,right: 20),
     child: Expanded(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 80),
             child: Custombar(
                 title: 'Edit Note',
                 icon: Icons.check,
                 onTap: ()
                 {
                   note.save();
                   BlocProvider.of<LoadNotesCubit>(context).fetch();
                   Navigator.pop(context);
                 },
               ),
           ),

           SizedBox(height: 10,),
           Customtextfield(hintText: note.title,
             onChanged: (value)
             {
               note.title=value;
             },
           ),
           SizedBox(height: 15,),
           Customtextfield(hintText: note.subTitle,maxlines: 3,
             onChanged: (value)
             {
               note.subTitle=value;
             },
           ),
           SizedBox(height: 10,),
           EditColorListView(
             note: note,
           )

         ],
       ),
     ),
   ));
  }
}
