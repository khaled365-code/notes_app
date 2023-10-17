
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_icon.dart';
class Custombar extends StatelessWidget {

  Custombar({required this.title,required this.icon,this.onTap});
  final String title;
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Text(title,style: TextStyle(fontSize: 30),),
        Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Customicon(
            icon: icon,
          ),
        )
      ],
    );

  }
}
