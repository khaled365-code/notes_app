import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'notes_screen.dart';


class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState()
  {
    super.initState();
    splashTime();

  }

    @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('Mininote',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'Gramound' ),)),
                 SizedBox(width: 10,),
                 Icon(FontAwesomeIcons.checkDouble,color: Colors.white,size: 30,)
              ],
            )
           ],
        ),
      ),
    );
  }

  splashTime()async
  {
    await Future.delayed(Duration(seconds: 8));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Notesscreen(),));
  }
}
