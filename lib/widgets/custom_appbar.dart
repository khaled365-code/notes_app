
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_searchicon.dart';
class Custombar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Text('Notes',style: TextStyle(fontSize: 30,color: Colors.white),),
        Spacer(),
        Searchicon()
      ],
    );

  }
}
