import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_form_field.dart';

class AddFormSheet extends StatefulWidget {
  const AddFormSheet({super.key});

  @override
  State<AddFormSheet> createState() => _AddFormSheetState();
}

class _AddFormSheetState extends State<AddFormSheet> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 10.0),
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          SizedBox(height: 10.0),
          CustomTextFormField(
            onSaved: (value) {
              content = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(height: 30.0),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                log('Title: $title, Content: $content');
                Navigator.pop(context);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
