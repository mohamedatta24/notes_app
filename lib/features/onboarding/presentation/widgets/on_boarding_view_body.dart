import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/presentation/widgets/custom_button.dart';
import 'package:notes_app/features/onboarding/presentation/widgets/custom_dot_indicator.dart';

import 'package:notes_app/features/onboarding/presentation/widgets/custom_page_view_builder.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: CustomPageViewBuilder()),
          CustomDotIndicator(),
          SizedBox(height: 50),

          CustomButton(text: 'Get Started', onTap: () {}),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
