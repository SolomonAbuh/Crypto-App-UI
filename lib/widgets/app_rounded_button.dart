// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AppRoundedButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  const AppRoundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  State<AppRoundedButton> createState() => _AppRoundedButtonState();
}

class _AppRoundedButtonState extends State<AppRoundedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController btnController;
  late double scale;

  @override
  void initState() {
    super.initState();
    btnController = AnimationController(
      vsync: this,
      duration: 250.ms,
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    scale = 1 - btnController.value;

    void onTapDown(TapDownDetails details) {
      btnController.forward();
    }

    void onTapUp(TapUpDetails details) {
      btnController.reverse();
      widget.onPressed();
    }

    return Transform.scale(
      scale: scale,
      child: GestureDetector(
        onTapUp: onTapUp,
        onTapDown: onTapDown,
        child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              widget.text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            )),
      ),
    );
  }
}
