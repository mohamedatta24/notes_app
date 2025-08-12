import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_form_field.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0),
            CustomTextFormField(hintText: 'Title'),
            SizedBox(height: 10.0),
            CustomTextFormField(hintText: 'Content', maxLines: 5),
            SizedBox(height: 30.0),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
