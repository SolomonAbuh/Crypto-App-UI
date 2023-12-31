import 'package:crypto_app_ui/extensions.dart';
import 'package:crypto_app_ui/widgets/app_bar.dart';
import 'package:crypto_app_ui/widgets/asset_details.dart';
import 'package:crypto_app_ui/widgets/asset_grid.dart';
import 'package:crypto_app_ui/widgets/asset_price_trading_bar.dart';
import 'package:crypto_app_ui/widgets/assets_graph.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AssetsPage extends StatelessWidget {
  const AssetsPage({super.key});

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
                title: 'Assets',
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      2.h.sH,
                      const AssetDetails(),
                      3.h.sH,
                      const AssetPriceTradingBar(),
                      3.h.sH,
                      const AssetGraph(),
                      3.h.sH,
                      const AssetGrid(),
                      30.h.sH
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
