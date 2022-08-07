import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/components/app-color/app_colors.dart';
import 'package:space_app/views/login-screen/login_screen.dart';
import 'package:space_app/views/sign-up-screen/sign_up_screen.dart';
import 'package:space_app/widgets/animated_button.dart';
import 'package:space_app/widgets/image_container.dart';

class IntroScreen extends StatefulWidget {

  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColor.secondaryColor,
      body: Container(

        height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: Stack(

          children: [

            // screen-image
            const Positioned(

              right: -200,
              top: 120,
              child: Center(

                child: ImageContainer(

                    height: 500, width: 500,
                    imagePath: "lib/assets/images/sun.jpg"
                ),
              ),
            ),

            Positioned(

              left: 20,
              bottom: 50,
              right: 20,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(

                    "Let's Explore",
                    style: GoogleFonts.jost(

                      color: Colors.white,
                      fontSize: 30, fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(

                    "The Solar System",
                    style: GoogleFonts.jost(

                        color: Colors.white,
                        fontSize: 30, fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 15),

                  Text(

                    "Learn more about our solar system, planets. Follow the latest space news and expeditions.",
                    style: GoogleFonts.jost(

                        color: Colors.white60,
                        fontSize: 17, fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 50),

                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      AnimatedButton(

                          gradient: LinearGradient(

                            begin: Alignment.centerLeft, end: Alignment.centerRight,
                            colors: [

                              AppColor.buttonBorder, AppColor.bottomNavIconActive
                            ]
                          ),
                          text: "Start Now",
                          textColor: Colors.white,
                          onTap: (){

                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                          },
                          height: 50,
                          width: 190
                      ),
                      AnimatedButton(

                          text: "Sign up",
                          textColor: AppColor.buttonBorder,
                          gradient: LinearGradient(

                              begin: Alignment.centerLeft, end: Alignment.centerRight,
                              colors: [

                                AppColor.primaryColor, AppColor.secondaryColor
                              ]
                          ),
                          onTap: (){

                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                          },
                          height: 50,
                          width: 190
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
