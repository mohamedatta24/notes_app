import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/features/notes/presentation/models/notes_model.dart';
import 'package:notes_app/utils/constants.dart';

part 'notes_state.dart';



class NotesCubit extends Cubit<NotesState> {

  
  NotesCubit() : super(NotesInitial());
  List<NotesModel>? notes;
  fetchAllNotes() {
    var box = Hive.box<NotesModel>(notesBox);
    notes = box.values.toList();
    emit(NotesSuccess(notes!));
  }

  void addNote(NotesModel notesModel) {}
}
