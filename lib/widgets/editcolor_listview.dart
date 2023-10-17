
import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

import '../constants/constants.dart';
import 'colors_item.dart';


class EditColorListView extends StatefulWidget {

  @override
  State<EditColorListView> createState() => _EditColorListViewState();
  EditColorListView({required this.note});
  Notemodel note;
}

class _EditColorListViewState extends State<EditColorListView> {
  
  late int currentIndex;
 
  @override
  void initState() {
    super.initState();
    currentIndex=kColors.indexOf(Color(widget.note.color));
  }
  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: ()
            {
              currentIndex=index;
              widget.note.color=kColors[index].value;
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
    );;
  }
}
