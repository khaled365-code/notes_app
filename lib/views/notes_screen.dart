
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

import '../widgets/modalbuttomsheet_widget.dart';
import '../widgets/note_item.dart';

class Notesscreen extends StatelessWidget {

  static String id='Notesscreen';
  @override
  Widget build(BuildContext context)
  {

    return Scaffold(

      body:Padding(
        padding: const EdgeInsets.only(top: 80,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:
            [
            Custombar(),
            SizedBox(height: 10,),
            Expanded(
                child: ListView.separated(
                  padding: EdgeInsetsDirectional.symmetric(vertical: 20),
                    itemBuilder: (context, index) => Noteitem(),
                separatorBuilder: (context, index) => SizedBox(height: 20,),
                itemCount: 20,)),
            ],
        ),
      ),
        floatingActionButton:FloatingActionButton(onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
              context: context, builder: (context){
            return Modalbuttomsheet();
          });
        },child: Icon(Icons.add,color: Colors.black,),)


  );

  }
}
