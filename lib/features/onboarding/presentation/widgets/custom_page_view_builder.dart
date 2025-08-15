import 'package:flutter/material.dart';
import 'package:notes_app/features/onboarding/presentation/models/on_boarding_model.dart';
import 'package:notes_app/features/onboarding/presentation/widgets/custom_page_view_item.dart';

class CustomPageViewBuilder extends StatelessWidget {
  const CustomPageViewBuilder({super.key, this.controller, this.onPageChanged});

  final List<OnBoardingModel> pages = const [
    OnBoardingModel(
      image: 'assets/images/1.PNG',
      title: 'Welcome to Your Notes',
      description: 'Keep your ideas organized and easy to access.',
    ),
    OnBoardingModel(
      image: 'assets/images/2.PNG',
      title: 'Stay Productive',
      description: 'Create, edit, and manage your notes anytime.',
    ),
    OnBoardingModel(
      image: 'assets/images/3.PNG',
      title: 'Ready to Start',
      description: 'Let’s make your first note today!',
    ),
  ];

  final PageController? controller;
  final void Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: onPageChanged,
      controller: controller,
      physics: BouncingScrollPhysics(),
      itemCount: pages.length,
      itemBuilder: (context, index) {
        return CustomPageViewItem(
          onBoardingModel: pages[index], // Pass the current
        );
      },
    );
  }
}
