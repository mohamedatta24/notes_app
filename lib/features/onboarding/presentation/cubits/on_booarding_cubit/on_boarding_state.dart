part of 'on_boarding_cubit.dart';

@immutable
sealed class OnBoardingState {
  final int currentIndex;
  const OnBoardingState({required this.currentIndex});
}

final class OnBoardingInitial extends OnBoardingState {
  const OnBoardingInitial({required super.currentIndex});
}
