import 'package:crypto_app_ui/data.dart';
import 'package:crypto_app_ui/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';
import 'package:svg_flutter/svg.dart';

class TradeCoinList extends StatelessWidget {
  const TradeCoinList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ...List.generate(
            cryptoDataList.length,
            (index) {
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
                ).animate().fadeIn(delay: (300 + index * 50).ms).slideY(
                      begin: 0.8,
                      delay: (300 + index * 50).ms,
                    ),
              );
            },
          ),
          3.h.sH,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                backgroundColor: Colors.black),
            onPressed: () {},
            child: const Text(
              'View all',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          3.h.sH
        ],
      ),
    );
  }
}
