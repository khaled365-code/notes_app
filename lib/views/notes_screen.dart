import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/load_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/editnote_screen.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

import '../widgets/modalbuttomsheet_widget.dart';
import '../widgets/note_item.dart';

class Notesscreen extends StatefulWidget {

  static String id = 'Notesscreen';

  @override
  State<Notesscreen> createState() => _NotesscreenState();
}

class _NotesscreenState extends State<Notesscreen> {


  @override
  void initState() {
    super.initState();
    BlocProvider.of<LoadNotesCubit>(context).fetch();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: BlocBuilder<LoadNotesCubit, LoadNotesState>(
        builder: (context, state)
        {
          if(state is LoadNotesSuccess)
            {
              List<Notemodel> notes = BlocProvider.of<LoadNotesCubit>(context).notes ?? [];
              return Padding(
                padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:
                  [
                    Custombar(
                      title: 'Notes',
                      icon: Icons.search,
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: ListView.separated(
                              padding: EdgeInsetsDirectional.symmetric(
                                  vertical: 20),
                              itemBuilder: (context, index) => Noteitem(
                                note: notes[index],
                              ),
                              separatorBuilder: (context, index) => SizedBox(height: 20,),
                              itemCount: notes.length,) )


                  ],
                ),
              );
            }
          else
            {
              List<Notemodel> notes = BlocProvider.of<LoadNotesCubit>(context).notes ?? [];
              return Padding(
                padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:
                  [
                    Custombar(
                      title: 'Notes',
                      icon: Icons.search,
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                        child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Editnotescreen.id);
                            },
                            child: ListView.separated(
                              padding: EdgeInsetsDirectional.symmetric(
                                  vertical: 20),
                              itemBuilder: (context, index) => Noteitem(
                                note: notes[index],
                              ),
                              separatorBuilder: (context, index) => SizedBox(height: 20,),
                              itemCount: notes.length,)
                        ))

                  ],
                ),
              );
            }



        }
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              context: context, builder: (context) {
            return Modalbuttomsheet();
          });
        }, child: Icon(Icons.add, color: Colors.black,),)


    );
  }
}
