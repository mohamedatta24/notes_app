import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes/presentation/views/notes_view.dart';
import 'package:notes_app/features/notes/presentation/widgets/custom_button.dart';
import 'package:notes_app/features/onboarding/presentation/cubits/on_booarding_cubit/on_boarding_cubit.dart';
import 'package:notes_app/features/onboarding/presentation/widgets/custom_dot_indicator.dart';
import 'package:notes_app/features/onboarding/presentation/widgets/custom_page_view_builder.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        final cubit = BlocProvider.of<OnBoardingCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomPageViewBuilder(
                  controller: cubit.pageController,
                  onPageChanged: cubit.changePage,
                ),
              ),
              CustomDotIndicator(
                controller: cubit.pageController,
                currentIndex: 3,
              ),
              SizedBox(height: 50),
              CustomButton(
                text: state.currentIndex == 2 ? 'Get Started' : 'Next',
                onTap: () {
                  if (state.currentIndex == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return NotesView();
                        },
                      ),
                    );
                  } else {
                    cubit.nextPage();
                  }
                },
              ),
              SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
