import 'package:crypto_app_ui/constants/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';
import 'package:svg_flutter/svg.dart';

class OnboardImage extends StatelessWidget {
  const OnboardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        AppConstants.onboardImage,
        height: 40.h,
        fit: BoxFit.contain,
      ),
    ).animate().fadeIn(duration: 1000.ms).scale(
          duration: 200.ms,
          curve: Curves.easeInOut,
        );
  }
}
