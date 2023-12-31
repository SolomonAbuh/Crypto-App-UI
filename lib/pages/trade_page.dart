import 'package:crypto_app_ui/extensions.dart';
import 'package:crypto_app_ui/widgets/app_bar.dart';
import 'package:crypto_app_ui/widgets/movers_grid.dart';
import 'package:crypto_app_ui/widgets/trade_coin_list.dart';
import 'package:crypto_app_ui/widgets/trade_search_bar.dart';
import 'package:crypto_app_ui/widgets/trade_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TradePage extends StatefulWidget {
  const TradePage({super.key});

  @override
  State<TradePage> createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Column(
            children: [
              const CustomAppBar(
                title: 'Trade',
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      2.h.sH,
                      const TradeSearchBar(),
                      2.h.sH,
                      const TradeTabBar(),
                      3.h.sH,
                      const TradeCoinList(),
                      3.h.sH,
                      Text(
                        'Movers',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16.sp),
                      ),
                      3.h.sH,
                      const MoversGrid(),
                      20.h.sH,
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
