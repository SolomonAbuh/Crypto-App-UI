import 'package:crypto_app_ui/constants/contants.dart';
import 'package:crypto_app_ui/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:svg_flutter/svg.dart';

class AddMoneyRow extends StatelessWidget {
  const AddMoneyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                AppConstants.ethIcon,
                height: 25,
              ),
              8.sW,
              const Text('13,55 ETH'),
              const Icon(Icons.keyboard_arrow_down)
            ],
          ),
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
          child: const Row(
            children: [Text('Add money'), Icon(Icons.add)],
          ),
        ),
      ],
    )
        .animate()
        .fadeIn(
          duration: 1000.ms,
        )
        .slideY(
          delay: 200.ms,
          begin: 1.3,
          duration: 300.ms,
        );
  }
}
