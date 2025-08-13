import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/presentation/widgets/add_form_sheet.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 20.0,
        bottom: MediaQuery.viewInsetsOf(context).bottom,
      ),
      child: SingleChildScrollView(child: AddFormSheet()),
    );
  }
}
