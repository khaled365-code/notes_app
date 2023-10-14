import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/views/editnote_screen.dart';
import 'package:notes_app/views/notes_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kHiveBox);
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
        Notesscreen.id:(context) => Notesscreen(),
        Editnotescreen.id:(context) => Editnotescreen()
      },
      initialRoute: Notesscreen.id ,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'

      ),
    );
  }
}

