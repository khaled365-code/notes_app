import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/load_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:quickalert/models/quickalert_options.dart';
import 'package:quickalert/quickalert.dart';

import '../views/editnote_screen.dart';

class Noteitem extends StatelessWidget {

  Noteitem({super.key, required this.note});
  final Notemodel note;
  @override
  Widget build(BuildContext context)
  {
     return GestureDetector(
       onTap: ()
       {
         Navigator.push(context, MaterialPageRoute(builder: (context) => Editnotescreen(
           note: note,
         ),));

       },
       child: Container(
         padding: EdgeInsetsDirectional.only(start: 10,top: 35,bottom: 25,end: 10),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(16),
           color: Color(note.color),
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             ListTile(
               title: Text(note.title,style: TextStyle(fontSize: 30,color: Colors.black),),
               subtitle: Padding(
                 padding: const EdgeInsets.only(top: 15,bottom: 10),
                 child: Text(note.subTitle,style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(.5)),),
               ),
               trailing: Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: GestureDetector(
                   onTap: ()
                     {
                       QuickAlert.show(context: context,
                           type: QuickAlertType.confirm,
                            title: 'Confirm' ,
                            text:  'Are you sure?',
                            cancelBtnText: 'Cancel',
                            confirmBtnText:  'yes',
                           confirmBtnColor: Colors.white,
                           backgroundColor: Colors.black,
                           headerBackgroundColor: Colors.grey,
                           confirmBtnTextStyle: const TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                           ),
                           titleColor: Colors.white,
                           textColor: Colors.white,
                           onConfirmBtnTap: ()
                           {
                             note.delete();
                             BlocProvider.of<LoadNotesCubit>(context).fetch();
                             Navigator.pop(context);

                           },
                            onCancelBtnTap: ()
                           {
                             Navigator.pop(context);
                           }

                       );

                     },
                     child: Icon(FontAwesomeIcons.trash,size: 25,color: Colors.black,)),
               )
             ),
             Padding(
               padding: const EdgeInsets.only(right: 10,top: 20),
               child: Text(note.date,style: TextStyle(fontSize: 20,color: Colors.black),),
             ),
            ],
         ),

       ),
     );
  }
}
