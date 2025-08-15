import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/core/helper/snack_bar_messenger_error.dart';
import 'package:notes_app/features/notes/presentation/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/features/notes/presentation/models/notes_model.dart';
import 'package:notes_app/features/notes/presentation/widgets/custom_app_bar.dart';
import 'package:notes_app/features/notes/presentation/widgets/custom_text_form_field.dart';
import 'package:notes_app/core/utils/colors.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.notesModel});
  final NotesModel notesModel;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            CustomAppBar(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  widget.notesModel.title = title ?? widget.notesModel.title;
                  widget.notesModel.content =
                      content ?? widget.notesModel.content;
                  widget.notesModel.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                  snackBarMessengerError(
                    context,
                    AppColors.info,
                    'Note Edited Successfully!',
                  );
                }
              },
              text: 'Edit Note',
              icon: Icons.check,
            ),
            const SizedBox(height: 20.0),

            CustomTextFormField(
              initialValue: widget.notesModel.title,
              onSaved: (value) => title = value,
              hintText: 'Title',
            ),
            const SizedBox(height: 10.0),
            CustomTextFormField(
              initialValue: widget.notesModel.content,
              onSaved: (value) => content = value,
              hintText: 'Content',
              maxLines: 7,
            ),
          ],
        ),
      ),
    );
  }
}
