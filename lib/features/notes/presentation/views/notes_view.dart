import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/presentation/widgets/add_bottom_sheet.dart';
import 'package:notes_app/features/notes/presentation/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
            ),
            context: context,
            builder: (context) {
              return AddBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(child: NotesViewBody()),
    );
  }
}
