import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes/presentation/cubits/add_notes_cubit/notes_cubit.dart';
import 'package:notes_app/features/notes/presentation/models/notes_model.dart';
import 'package:notes_app/features/notes/presentation/widgets/edit_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key, required this.notesModel});

  final NotesModel notesModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Scaffold(
        body: SafeArea(
          child: EditViewBody(
            notesModel: notesModel, // Pass the current note model
          ),
        ),
      ),
    );
  }
}
