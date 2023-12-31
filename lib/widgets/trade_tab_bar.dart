import 'package:crypto_app_ui/data.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TradeTabBar extends StatefulWidget {
  const TradeTabBar({super.key});

  @override
  State<TradeTabBar> createState() => _TradeTabBarState();
}

class _TradeTabBarState extends State<TradeTabBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        tradeTabBarItems.length,
        (index) => Expanded(
          child: InkWell(
            onTap: () {
              for (var e in tradeTabBarItems) {
                e.isSelected = false;
              }

              tradeTabBarItems[index].isSelected = true;
              setState(() {});
            },
            child: SizedBox(
              height: 8.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(tradeTabBarItems[index].title),
                  Visibility(
                    visible: tradeTabBarItems[index].isSelected,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 0.5.h,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
