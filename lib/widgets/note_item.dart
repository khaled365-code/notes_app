import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';

class Noteitem extends StatelessWidget {

  Noteitem({super.key, required this.note});
  final Notemodel note;
  @override
  Widget build(BuildContext context)
  {
     return Container(
       padding: EdgeInsetsDirectional.only(start: 10,top: 35,bottom: 35,end: 10),
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
               child: Icon(FontAwesomeIcons.trash,size: 25,color: Colors.black,),
             )
           ),
           Padding(
             padding: const EdgeInsets.only(right: 60,top: 20),
             child: Text(note.date,style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(.5)),),
           ),
          ],
       ),

     );
  }
}
