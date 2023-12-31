import 'package:crypto_app_ui/constants/contants.dart';
import 'package:crypto_app_ui/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 10.h,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 15.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              AppConstants.profilePicture,
              fit: BoxFit.cover,
            ),
          ),
          3.w.sW,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Solomon Abuh',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
              4.sH,
              const Text(
                'solomon@flutter.com',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    ).animate().fadeIn().slideY(begin: 0.3, duration: 200.ms).scale(
          begin: const Offset(0.8, 1),
        );
  }
}
