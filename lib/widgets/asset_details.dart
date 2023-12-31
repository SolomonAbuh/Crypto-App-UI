import 'package:crypto_app_ui/constants/contants.dart';
import 'package:crypto_app_ui/extensions.dart';
import 'package:crypto_app_ui/widgets/number_count.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';
import 'package:svg_flutter/svg.dart';

class AssetDetails extends StatelessWidget {
  const AssetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(AppConstants.ethIcon),
            3.w.sW,
            Text(
              'Ethereum price',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        2.h.sH,
        Row(
          children: [
            CountupText(
              begin: 0,
              end: 1714.14,
              duration: 1.seconds,
              style: TextStyle(fontSize: 30.sp),
            ).animate().fadeIn(
                  delay: 300.ms,
                  duration: 500.ms,
                ),
            5.w.sW,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.shade200,
              ),
              child: const Text('0.92%'),
            ),
            3.w.sW,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.shade200,
              ),
              child: const Icon(
                CupertinoIcons.arrow_up_right,
                size: 16,
              ),
            )
          ],
        )
      ],
    );
  }
}
