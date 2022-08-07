import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:space_app/components/app-color/app_colors.dart';
import 'package:space_app/views/intro-screen/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final String appName1 = "Space";
  final String appName2 = "Explore";

  @override
  void initState() {

    Timer(const Duration(seconds: 5),()
      {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const IntroScreen()));
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColor.secondaryColor,
      body: Stack(

        children: [

          Align(

            alignment: Alignment.center,
            child: SizedBox(

              height: 300, width: 300,
              child: Lottie.asset("lib/assets/animations/rocket.json"),
            ),
          ),

          Positioned(

            bottom: 280,
            left: 50, right: 50,
            child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                      appName1,
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        /*shadows: [

                                  const Shadow(color: Colors.black38, offset: Offset(5, 5), blurRadius: 5),
                                ]*/
                      )
                  ),
                  const SizedBox(width: 3),

                  Text(
                      appName2,
                      style: GoogleFonts.poppins(
                        color: Colors.white38,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        /*shadows: [

                                  const Shadow(color: Colors.black38, offset: Offset(5, 5), blurRadius: 5)
                                ]*/
                      )
                  )
                ]
            ),
          ),
        ]
      ),
    );
  }
}
