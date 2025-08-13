import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/presentation/widgets/custom_app_bar.dart';
import 'package:notes_app/features/notes/presentation/widgets/custom_text_form_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 10.0),
          CustomAppBar(
            onTap: () {},
            text: 'Edit Note',
            icon: Icons.check, // Assuming you want to use an edit icon
          ),
          SizedBox(height: 20.0),

          CustomTextFormField(hintText: 'Title'),
          SizedBox(height: 10.0),
          CustomTextFormField(hintText: 'Content', maxLines: 7),
        ],
      ),
    );
  }
}
