import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:space_app/components/app-color/app_colors.dart';
import 'package:space_app/views/intro-screen/intro_screen.dart';
import 'package:space_app/views/sign-up-screen/sign_up_field.dart';
import 'package:space_app/widgets/animated_appbar_icon_button.dart';

class SignUpScreen extends StatefulWidget {

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColor.secondaryColor,
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(

          padding: const EdgeInsets.only(left: 15, top: 5),
          child: AnimatedAppbarIconButton(
              icon: Icons.arrow_back,
              onTap: (){

                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const IntroScreen()));
              },
              gradient: LinearGradient(

                  begin: Alignment.centerLeft, end: Alignment.centerRight,
                  colors: [

                    AppColor.primaryColor, AppColor.secondaryColor
                  ]
              ),
              iconColor: Colors.white
          ),
        ),
      ),
      body: Stack(

        children: [

          // top-left
          Positioned(

            top: 150,
            left: -20,
            child: SizedBox(
                height: 250,
                width: 250,
                child: Lottie.asset("lib/assets/animations/stars.json")
            ),
          ),

          // top-right
          Positioned(

            top: 0,
            right: -20,
            child: SizedBox(
                height: 250,
                width: 250,
                child: Lottie.asset("lib/assets/animations/stars.json")
            ),
          ),

          // bottom-right
          Positioned(

            bottom: 0,
            right: -20,
            child: SizedBox(
                height: 250,
                width: 250,
                child: Lottie.asset("lib/assets/animations/stars.json")
            ),
          ),

          // moon
          Positioned(

            top: 220,
            right: -120,
            child: Center(

              child: SizedBox(

                height: 300, width: 300,
                child: Lottie.asset("lib/assets/animations/moon.json"),
              ),
            ),
          ),

          // rocket
          Positioned(

            bottom: 20,
            left: 10,
            child: SizedBox(
                height: 120,
                width: 120,
                child: Lottie.asset("lib/assets/animations/bg-rocket.json")
            ),
          ),

          const Align(

            alignment: Alignment.center,
            child: SignUpField(),
          )
        ],
      ),
    );
  }
}
