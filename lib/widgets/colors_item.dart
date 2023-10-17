
import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';

class ColorItem extends StatefulWidget {


  Color color;
  bool isActive=false;

   ColorItem({super.key,this.color=kPrimaryColor, required this.isActive});

  @override
  State<ColorItem> createState() => _ColorItemState();
}

class _ColorItemState extends State<ColorItem> {


  @override
  Widget build(BuildContext context) {

    return widget.isActive ?  CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: widget.color,
      )) : CircleAvatar(radius: 30, backgroundColor: widget.color,);



  }
}
