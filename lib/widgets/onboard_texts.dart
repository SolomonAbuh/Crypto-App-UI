import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnboardTexts extends StatelessWidget {
  const OnboardTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Welcome to\nCryptoHub!',
          style: TextStyle(
            fontSize: 45,
            height: 1,
            color: Colors.yellow,
          ),
        )
            .animate()
            .fadeIn(delay: 300.ms, duration: 500.ms, curve: Curves.easeInOut),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Your gateway to the world\nof cryptocurrencies',
          style: TextStyle(
            color: Colors.white,
          ),
        )
            .animate()
            .fadeIn(delay: 400.ms, duration: 500.ms, curve: Curves.easeInOut),
      ],
    );
  }
}
