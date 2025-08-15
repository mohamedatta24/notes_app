import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/presentation/views/notes_view.dart';
import 'package:notes_app/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:notes_app/features/splash/presentation/widgets/custom_splash_item.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: CustomItem(),
      nextScreen: OnBoardingView(),
      backgroundColor: Colors.black,
      splashIconSize: 250,
      duration: 2000,
      splashTransition: SplashTransition.scaleTransition,
      animationDuration: const Duration(seconds: 2),
      curve: Curves.easeInOutBack,
    );
  }
}
