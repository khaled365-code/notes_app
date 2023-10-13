import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Noteitem extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
     return Container(
       padding: EdgeInsetsDirectional.only(start: 10,top: 35,bottom: 35,end: 10),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(16),
         color: Colors.orange[200],
       ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.end,
         children: [
           ListTile(
             title: Text('Flutter note',style: TextStyle(fontSize: 30,color: Colors.black),),
             subtitle: Padding(
               padding: const EdgeInsets.only(top: 15,bottom: 10),
               child: Text('Build your career with Khaled Mohamed',style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(.5)),),
             ),
             trailing: Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Icon(FontAwesomeIcons.trash,size: 25,color: Colors.black,),
             )
           ),
           Padding(
             padding: const EdgeInsets.only(right: 5,top: 20),
             child: Text('October 12,2023',style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(.5)),),
           ),
          ],
       ),

     );
  }
}
