import 'package:crypto_app_ui/extensions.dart';
import 'package:crypto_app_ui/widgets/number_count.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Total Balance').animate().fadeIn(
              delay: 300.ms,
              duration: 1000.ms,
            ),
        10.sH,
        CountupText(
          begin: 0,
          end: 25291.50,
          duration: 1.seconds,
          style: TextStyle(fontSize: 43.sp),
        ).animate().fadeIn(
              delay: 300.ms,
              duration: 500.ms,
            ),
      ],
    );
  }
}
