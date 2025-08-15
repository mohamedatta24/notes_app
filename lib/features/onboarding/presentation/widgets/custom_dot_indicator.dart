import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.currentIndex, required this.controller});
  final PageController controller ;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: currentIndex,
      axisDirection: Axis.horizontal,
      effect: SlideEffect(
        spacing: 8.0,
        dotWidth: 40.0,
        dotHeight: 8.0,
        paintStyle: PaintingStyle.stroke,
        strokeWidth: 1.5,
        dotColor: Colors.grey,
        activeDotColor: Colors.amber,
      ),
    );
  }
}
