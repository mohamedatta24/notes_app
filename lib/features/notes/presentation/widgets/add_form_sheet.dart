import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes/presentation/cubits/add_notes_cubit/notes_cubit.dart';
import 'package:notes_app/features/notes/presentation/models/notes_model.dart';
import 'package:notes_app/features/notes/presentation/widgets/custom_button.dart';
import 'package:notes_app/features/notes/presentation/widgets/custom_colors_list_view.dart';
import 'package:notes_app/features/notes/presentation/widgets/custom_text_form_field.dart';
import 'package:notes_app/core/utils/constants.dart';

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
          CustomColorsListView(
          
          ),
          SizedBox(height: 30.0),
          CustomButton(
            text: 'Add Note',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var notesModel = NotesModel(
                  color: BlocProvider.of<AddNotesCubit>(context).selectedColor.value,
                  date: formattedDate,
                  title: title!,
                  content: content!,
                );

                BlocProvider.of<AddNotesCubit>(context).addNotes(notesModel);
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
