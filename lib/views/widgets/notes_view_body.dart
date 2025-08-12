import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes_item_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 10.0),
          const CustomAppBar(),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: NotesItemListView(),
            ),
          ),
        ],
      ),
    );
  }
}
