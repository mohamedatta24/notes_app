import 'package:flutter/material.dart';
import 'package:notes_app/features/onboarding/presentation/models/on_boarding_model.dart';

class CustomPageViewItem extends StatelessWidget {
  const CustomPageViewItem({super.key, required this.onBoardingModel});

  final OnBoardingModel onBoardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(onBoardingModel.image, fit: BoxFit.fill),
        SizedBox(height: 20),
        Text(
          onBoardingModel.title,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            onBoardingModel.description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ),
      ],
    );
  }
}
