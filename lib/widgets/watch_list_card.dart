import 'package:crypto_app_ui/data.dart';
import 'package:crypto_app_ui/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';
import 'package:svg_flutter/svg.dart';

class WatchListCard extends StatelessWidget {
  const WatchListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Watchlist',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                ),
              ),
              2.sW,
              const Icon(Icons.chevron_right),
            ],
          ),
          2.h.sH,
          ...List.generate(cryptoDataList.length, (index) {
            final cryptodData = cryptoDataList[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: index == cryptoDataList.length - 1 ? 0 : 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    cryptodData.iconAsset,
                    height: 40,
                    fit: BoxFit.fitHeight,
                  ),
                  10.sW,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cryptodData.coinSlug,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      3.sH,
                      Text(
                        cryptodData.coinName,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        cryptodData.amount,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      3.sH,
                      Row(
                        children: [
                          Icon(
                            cryptodData.rise
                                ? CupertinoIcons.arrow_up_right
                                : CupertinoIcons.arrow_down_left,
                            size: 16,
                            color: Colors.grey,
                          ),
                          Text(
                            cryptodData.percent,
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ).animate().fadeIn(delay: (400 + index * 50).ms).slideY(
                    begin: 0.8,
                    delay: (400 + index * 50).ms,
                  ),
            );
          })
        ],
      ),
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
