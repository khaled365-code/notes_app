
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/note_item.dart';

class Editnotescreen extends StatelessWidget {


  static String id='EditNotescreen';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.only(top: 80,left: 20,right: 20),
     child: Column(
       children: [
         Custombar(
           title: 'Edit Note',
           icon: Icons.check,
         ),
         SizedBox(height: 30,),
         Customtextfield(hintText: 'Title'),
         SizedBox(height: 30,),
         Customtextfield(hintText: 'content',maxlines: 5,)
       ],
     ),
   ));
  }
}
