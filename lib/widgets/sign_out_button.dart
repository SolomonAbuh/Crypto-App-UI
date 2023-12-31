import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';

class SignOutButton extends StatefulWidget {
  const SignOutButton({super.key});

  @override
  State<SignOutButton> createState() => _SignOutButtonState();
}

class _SignOutButtonState extends State<SignOutButton>
    with TickerProviderStateMixin {
  late AnimationController btnController;
  late double scale;

  @override
  void initState() {
    btnController = AnimationController(
      vsync: this,
      duration: 250.ms,
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    btnController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    scale = 1 - btnController.value;

    void onTapDown(TapDownDetails details) {
      btnController.forward();
    }

    void onTapUp(TapUpDetails details) {
      /// write logic here
      btnController.reverse();
    }

    return Transform.scale(
      scale: scale,
      child: GestureDetector(
        onTapUp: onTapUp,
        onTapDown: onTapDown,
        child: Container(
          height: 8.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
            child: Text(
              'Sign Out',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
