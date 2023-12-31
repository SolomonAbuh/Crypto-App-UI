import 'package:crypto_app_ui/constants/contants.dart';
import 'package:crypto_app_ui/data.dart';
import 'package:crypto_app_ui/extensions.dart';
import 'package:crypto_app_ui/widgets/app_bar.dart';
import 'package:crypto_app_ui/widgets/profile_card.dart';
import 'package:crypto_app_ui/widgets/profile_list_tile_card.dart';
import 'package:crypto_app_ui/widgets/sign_out_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              const CustomAppBar(
                title: 'Profile',
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    2.h.sH,
                    const ProfileCard(),
                    2.h.sH,
                    const ProfileListTileCard(),
                    2.h.sH,
                    const SignOutButton()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
