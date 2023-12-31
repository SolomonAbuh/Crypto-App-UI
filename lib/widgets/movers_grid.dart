import 'package:crypto_app_ui/data.dart';
import 'package:crypto_app_ui/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:sizer/sizer.dart';
import 'package:svg_flutter/svg.dart';

class MoversGrid extends StatelessWidget {
  const MoversGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      columnSizes: [1.fr, 1.fr],
      rowSizes: const [auto, auto],
      rowGap: 20,
      columnGap: 20,
      children: moversDataList
          .map(
            (e) => Container(
              padding: EdgeInsets.all(16),
              height: 18.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        e.iconAsset,
                        height: 40,
                        fit: BoxFit.fitHeight,
                      ),
                      2.w.sW,
                      Text(
                        (e.rise ? '+' : '-') + e.percent,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  3.h.sH,
                  Text(
                    e.coinName,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  1.h.sH,
                  Text(
                    e.amount,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey.shade600,
                    ),
                  )
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
