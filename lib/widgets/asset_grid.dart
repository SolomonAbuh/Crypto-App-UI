import 'package:crypto_app_ui/data.dart';
import 'package:crypto_app_ui/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:sizer/sizer.dart';

class AssetGrid extends StatelessWidget {
  const AssetGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      columnSizes: [1.fr, 1.fr],
      rowSizes: const [auto, auto],
      rowGap: 20,
      columnGap: 20,
      children: assetsGridData
          .map(
            (e) => Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.title,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  2.h.sH,
                  Text(
                    e.price,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    )
        .animate()
        .fadeIn(
          duration: 500.ms,
        )
        .slideY(
          begin: 0.5,
          duration: 300.ms,
        );
  }
}
