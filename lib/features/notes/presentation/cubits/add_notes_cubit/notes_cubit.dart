import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/features/notes/presentation/models/notes_model.dart';
import 'package:notes_app/utils/constants.dart';

part 'notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNotes(NotesModel notesModel) async {
    var box = Hive.box<NotesModel>(notesBox);
    await box.add(notesModel);
    emit(AddNotesSuccess());
  }
}
