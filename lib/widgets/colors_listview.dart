import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/load_notes_cubit.dart';

import '../constants/constants.dart';
import 'colors_item.dart';

class ColorsListView extends StatefulWidget {


  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: ()
            {
              currentIndex=index;
              BlocProvider.of<AddNoteCubit>(context).noteColor=kColors[index];
              setState(() {

              });

            },
            child: ColorItem(
              color: kColors[index],
              isActive: index==currentIndex,
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(width: 15,) ,
          itemCount: kColors.length),
    );
  }
}
