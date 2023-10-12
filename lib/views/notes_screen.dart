
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

class Notesscreen extends StatelessWidget {

  static String id='Notesscreen';
  @override
  Widget build(BuildContext context)
  {

    return Scaffold(

      body:Padding(
        padding: const EdgeInsets.only(top: 80,left: 24,right: 24),
        child: Column(
          children: [
            Custombar()
          ],
        ),
      )

    );

  }
}
