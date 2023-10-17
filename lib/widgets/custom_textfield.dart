
import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';


class Customtextfield extends StatelessWidget {

  Customtextfield({required this.hintText,this.maxlines=1,this.onsaved,@required this.validator,this.onChanged});
  final String hintText;
  final int maxlines;
  final void Function(String?)? onsaved;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      onChanged:onChanged,
      onSaved:  onsaved,
      validator: validator,
      cursorColor: kPrimaryColor,
        maxLines: maxlines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                  color: Colors.white,
                  width: 2,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                  color: Colors.greenAccent,
                  width: 2,
              )
          ),

        )
    );
  }
}
