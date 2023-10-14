import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_textfield.dart';


class Formwidget extends StatefulWidget {


  @override
  State<Formwidget> createState() => _FormwidgetState();
}

class _FormwidgetState extends State<Formwidget> {
  var checkDataKey=GlobalKey<FormState>();

  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

  String? title,subTiitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: checkDataKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Customtextfield(hintText: 'Title',
                onsaved: (value)
                {
                  title=value;
                },
                validator: (value)
                {
                  if(value?.isEmpty ?? true)
                  {
                    return 'this field is required';
                  }else
                  {
                    return null;
                  }
                },

              ),
              SizedBox(height: 30,),
              Customtextfield(hintText: 'content',maxlines: 5,
                onsaved: (value)
                {
                  subTiitle=value;
                },
                validator: (value)
                {
                  if(value?.isEmpty ?? true)
                  {
                    return 'this field is required';
                  }else
                  {
                    return null;
                  }
                },
              ),
              SizedBox(height: 30,),
              Custombutton(
                onTap: ()
                {
                  if(checkDataKey.currentState!.validate())
                  {
                    checkDataKey.currentState!.save();

                  }
                  else
                  {
                    autovalidateMode=AutovalidateMode.always;
                    setState(() {

                    });
                  }

                },
              ),



            ],
          ),
        ),

      ),
    );
  }
}
