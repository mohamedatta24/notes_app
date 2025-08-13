import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/presentation/widgets/edit_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: EditViewBody()),
    );
  }
}
