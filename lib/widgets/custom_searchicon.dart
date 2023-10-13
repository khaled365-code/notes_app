

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Searchicon extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(Icons.search,size: 25),

    );
  }
}
