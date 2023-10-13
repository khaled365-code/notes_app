import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';

class Custombutton extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
     return Padding(
       padding: const EdgeInsets.only(bottom: 30),
       child: Container(
         width: MediaQuery.of(context).size.width,
         height: 50,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(16),
           color: kPrimaryColor
         ),
         child: Center(child: Text('Add',style: TextStyle(color:Colors.black,fontSize: 20 ),)),
       ),
     );
  }
}
