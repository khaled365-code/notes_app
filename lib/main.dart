import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/load_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_blocobserver.dart';
import 'package:notes_app/views/editnote_screen.dart';
import 'package:notes_app/views/notes_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/views/splash_screen.dart';

void main() async {

  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox<Notemodel>(kHiveBox);
  runApp(const Notesapp());
}

class Notesapp extends StatelessWidget {
  const Notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoadNotesCubit(),),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splashscreen() ,
          theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Poppins'

          ),
        ),
    );
  }
}

