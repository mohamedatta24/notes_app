import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/presentation/models/notes_model.dart';
import 'package:notes_app/features/notes/presentation/widgets/edit_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key, required this.notesModel});
  
  final NotesModel notesModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: EditViewBody(
        notesModel: notesModel, // Pass the current note model  
      )),
    );
  }
}
