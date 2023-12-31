import 'package:crypto_app_ui/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';

class BuyAndSell extends StatelessWidget {
  const BuyAndSell({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.5.h,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 60,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'Buy',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                  child: const Icon(
                    CupertinoIcons.down_arrow,
                    color: Colors.yellow,
                  ),
                )
              ]),
            ),
          ),
          15.sW,
          Expanded(
            child: Container(
              height: 60,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'Sell',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: const Icon(
                    CupertinoIcons.up_arrow,
                    color: Colors.yellow,
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    )
        .animate()
        .fadeIn(
          delay: 300.ms,
          duration: 1000.ms,
        )
        .slideY(
          delay: 300.ms,
          begin: 0.3,
          duration: 300.ms,
        );
  }
}
