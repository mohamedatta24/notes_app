import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomDotIndicator extends StatelessWidget {
  CustomDotIndicator({super.key});
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: SlideEffect(
        spacing: 8.0,
        dotWidth: 32.0,
        dotHeight: 8.0,
        paintStyle: PaintingStyle.stroke,
        strokeWidth: 1.5,
        dotColor: Colors.grey,
        activeDotColor: Colors.amber,
      ),
    );
  }
}
