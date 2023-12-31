import 'package:crypto_app_ui/extensions.dart';
import 'package:crypto_app_ui/widgets/add_money_row.dart';
import 'package:crypto_app_ui/widgets/app_bar.dart';
import 'package:crypto_app_ui/widgets/balance.dart';
import 'package:crypto_app_ui/widgets/buy_and_sell.dart';
import 'package:crypto_app_ui/widgets/watch_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAppBar(),
                      10.sH,
                      const AddMoneyRow(),
                      2.h.sH,
                      const Balance(),
                      2.h.sH,
                      const BuyAndSell()
                    ],
                  ),
                ),
                3.5.h.sH,
                const WatchListCard(),
                30.sH
              ],
            ),
          ),
        ),
      ),
    );
  }
}
