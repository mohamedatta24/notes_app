import 'package:flutter/material.dart';

class CustomColors extends StatelessWidget {
  const CustomColors({
    super.key,
    required this.isSelected,
    required this.color,
    this.onTap,
  });

  final bool isSelected;
  final Color color;
  final VoidCallback? onTap; // عشان لو حابب تعمل Action عند الضغط

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: isSelected ? 32.0 : 28.0,
        backgroundColor: isSelected ? Colors.white : color,
        child:
            isSelected
                ? CircleAvatar(radius: 27.0, backgroundColor: color)
                : null,
      ),
    );
  }
}
