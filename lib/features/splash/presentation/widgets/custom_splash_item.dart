import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/logo/Note-Logo-Transparent-Background.png',
        height: 150,
      ),
    );
  }
}
