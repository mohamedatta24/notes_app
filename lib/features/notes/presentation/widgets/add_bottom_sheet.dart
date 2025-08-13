import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/core/helper/snack_bar_messenger_error.dart';
import 'package:notes_app/features/notes/presentation/cubits/add_notes_cubit/notes_cubit.dart';
import 'package:notes_app/features/notes/presentation/cubits/notes_cubit/notes_cubit.dart';

import 'package:notes_app/features/notes/presentation/widgets/add_form_sheet.dart';
import 'package:notes_app/utils/colors.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  final bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 20.0,
        bottom: MediaQuery.viewInsetsOf(context).bottom,
      ),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            snackBarMessengerError(
              context,
              AppColors.success,
              'Note added successfully!',
            );
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: ModalProgressHUD(
              inAsyncCall: isLoading,
              progressIndicator: const CircularProgressIndicator(),
              child: AddFormSheet(),
            ),
          );
        },
      ),
    );
  }
}
