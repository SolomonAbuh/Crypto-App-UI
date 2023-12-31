import 'package:crypto_app_ui/extensions.dart';
import 'package:crypto_app_ui/routes/app_routes.dart';
import 'package:crypto_app_ui/widgets/onboard_image.dart';
import 'package:crypto_app_ui/widgets/onboard_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage>
    with TickerProviderStateMixin {
  late AnimationController scaleController;
  late AnimationController btnController;
  late double scale;
  bool isVisible = true;

  @override
  void initState() {
    scaleController = AnimationController(vsync: this);
    btnController = AnimationController(
      vsync: this,
      duration: 250.ms,
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    
    super.initState();
  }

  @override
  void dispose() {
    btnController.dispose();
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    scale = 1 - btnController.value;

    void onTapDown(TapDownDetails details) {
      btnController.forward();
    }

    void onTapUp(TapUpDetails details) {
      setState(() {
        isVisible = false;
      });
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const OnboardImage(),
              5.h.sH,
              const OnboardTexts(),
              const Spacer(),
              Center(
                child: Transform.scale(
                  scale: scale,
                  child: GestureDetector(
                    onTapUp: onTapUp,
                    onTapDown: onTapDown,
                    child: AnimatedContainer(
                        onEnd: () {
                          scaleController.forward();
                        },
                        duration: 200.ms,
                        curve: Curves.easeInOut,
                        height: 60,
                        width: isVisible ? 100.w * 0.9 : 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Visibility(
                          visible: isVisible,
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        )),
                  ),
                )
                    .animate()
                    .slideY(
                      begin: 1,
                      duration: 1000.ms,
                      curve: Curves.easeInOut,
                    )
                    .animate(
                        autoPlay: false,
                        controller: scaleController,
                        onComplete: (val) => context.go(AppRoutes.home))
                    .scale(
                      end: const Offset(30, 30),
                      delay: 100.ms,
                      curve: Curves.easeInOut,
                    ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
