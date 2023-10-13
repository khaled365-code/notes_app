

import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_textfield.dart';
class Modalbuttomsheet extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Padding(
        padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Customtextfield(hintText: 'Title'),
                SizedBox(height: 30,),
                Customtextfield(hintText: 'content',maxlines: 5,),
                SizedBox(height: 30,),
                Custombutton(),



              ],
            ),
          ),

      );
  }
}
