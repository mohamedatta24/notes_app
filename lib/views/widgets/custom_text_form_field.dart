import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText, this.maxLines, this.onSaved});

  final String hintText;
  final int? maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter some text';
        }
        return null;
      },
      onSaved: onSaved,
      maxLines: maxLines ?? 1,
      cursorColor: Colors.white,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        border: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(Colors.pink),
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white.withAlpha(100),
          fontSize: 16,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(7.0),
      borderSide: BorderSide(color: color ?? Colors.white, width: 1.5),
    );
  }
}
