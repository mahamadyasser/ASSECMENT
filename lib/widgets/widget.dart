import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CastomFormField extends StatelessWidget {
TextEditingController textEditingController=TextEditingController();
String label;
Icon icon;
CastomFormField({required this.icon,required this.textEditingController,required this.label});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      validator: (value){
        if(value==null||value.isEmpty){
           throw Exception("enter data");
        }
        TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.blue,

        );

      },


    );
  }
}
