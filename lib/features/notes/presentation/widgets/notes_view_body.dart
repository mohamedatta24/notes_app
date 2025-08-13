import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/presentation/widgets/custom_app_bar.dart';
import 'package:notes_app/features/notes/presentation/widgets/notes_item_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 10.0),
          CustomAppBar(
            onTap: () {},
            text: 'Notes',
            icon: Icons.search, // Assuming you want to use a search icon
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 20.0),
              child: NotesItemListView(),
            ),
          ),
        ],
      ),
    );
  }
}
