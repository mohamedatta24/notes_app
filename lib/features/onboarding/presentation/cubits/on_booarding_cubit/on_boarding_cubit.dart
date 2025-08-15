import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial(currentIndex: 0));

  PageController pageController = PageController();

  void changePage(int index) {
    emit(OnBoardingInitial(currentIndex: index));
  }

  void nextPage() {
    if (state.currentIndex < 2) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
