import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/presentation/widgets/notes_item.dart';

class NotesItemListView extends StatelessWidget {
  const NotesItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 7.0),
          child: const NotesItem(),
        );
      },
    );
  }
}
