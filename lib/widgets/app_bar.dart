import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  const CustomAppBar({
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(CupertinoIcons.line_horizontal_3_decrease),
          title != null
              ? Text(
                  title!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                )
              : const SizedBox(),
          const Icon(
            CupertinoIcons.bell,
            color: Colors.black,
          )
        ],
      ),
      
    );
  }
}
