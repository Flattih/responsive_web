import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_web_design/models/coupons.dart';
import 'package:responsive_web_design/screens/coupon_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return ChangeNotifierProvider(
          create: (context) => Coupons(),
          child: MaterialApp(
            builder: (context, widget) => ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, widget!),
              maxWidth: 1200,
              minWidth: 450,
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(450, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                const ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
                const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
              ],
            ),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                  ),
                  onPrimary: Colors.black,
                  elevation: 0,
                  primary: Colors.white,
                  shape: const StadiumBorder(
                    side: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              appBarTheme: AppBarTheme(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  titleTextStyle:
                      TextStyle(color: Colors.black, fontSize: 6.sp)),
              primarySwatch: Colors.blue,
            ),
            home: const CouponScreen(),
          ),
        );
      },
    );
  }
}
