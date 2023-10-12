import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_screen.dart';

void main() {
  runApp(const Notesapp());
}

class Notesapp extends StatelessWidget {
  const Notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        Notesscreen.id:(context) => Notesscreen()
      },
      initialRoute: Notesscreen.id ,
      theme: ThemeData(
        brightness: Brightness.dark,

      ),
    );
  }
}

