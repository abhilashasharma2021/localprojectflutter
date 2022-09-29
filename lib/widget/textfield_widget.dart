import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final TextInputType? keyboardType;
  final TextStyle? style;
  List<TextInputFormatter>? inputFormatters;
  final double? boardRadius;
  final int? maxLines;
  final String? label;
  final bool obscureText ;
  final String? Function(String?)? validator;


  TextFieldWidget({Key? key,
    required this.textController,
    required this.hintText,
    required this. obscureText,
    required this. label,
    required this. style,
    required this. validator,
    required this. keyboardType,
    required this.inputFormatters,
    this.maxLines=1,
    this.boardRadius=30,  }) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      maxLines: maxLines,
      keyboardType: keyboardType,
      controller: textController,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      style: style,
      validator:  validator,
      decoration: InputDecoration(
          labelText: label,
          fillColor:Colors.white,
          hintText: hintText,

        border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(boardRadius!),
              borderSide: const BorderSide(
                  color:Colors.white,
                  width:1
              )
          ),

      ),
    );
  }
}
