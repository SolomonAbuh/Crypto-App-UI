import 'package:crypto_app_ui/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';

class ProfileListTileCard extends StatelessWidget {
  const ProfileListTileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: List.generate(
          profileListTileData.length,
          (index) => ListTile(
            onTap: () {},
            title: Text(
              profileListTileData[index],
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: const Icon(Icons.chevron_right),
          )
              .animate()
              .fadeIn(delay: (400 + index * 50).ms)
              .slideY(begin: 0.8, delay: (400 + index * 50).ms),
        ),
      ),
    );
  }
}
