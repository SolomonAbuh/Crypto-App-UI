import 'package:crypto_app_ui/data.dart';
import 'package:crypto_app_ui/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:svg_flutter/svg.dart';

class AppWrapper extends StatefulWidget {
  final Widget child;
  const AppWrapper({super.key, required this.child});

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  @override
  Widget build(BuildContext context) {
    final RouteMatch lastMatch =
        router.routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : router.routerDelegate.currentConfiguration;
    final String location = matchList.uri.toString();
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          widget.child,
          Container(
            margin: EdgeInsets.only(bottom: 6.5.h),
            height: 60,
            width: 65.w,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(60),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: bottomNavItems
                  .map(
                    (item) => IconButton(
                      onPressed: () {
                        if (location != item.routeName) {
                          context.push(item.routeName);
                        }
                      },
                      icon: SvgPicture.asset(
                        item.iconAsset,
                        width: 19.sp,
                        fit: BoxFit.fitWidth,
                        color: location == item.routeName
                            ? Colors.yellow
                            : Colors.white,
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
