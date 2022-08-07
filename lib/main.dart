import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:space_app/views/splash-screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveWrapper.builder(

        BouncingScrollWrapper.builder(context, child!),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [

          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ],
      ),
      theme: ThemeData.dark(),
      home: const SplashScreen(),
    );
  }
}
