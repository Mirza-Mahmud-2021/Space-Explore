import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/components/app-color/app_colors.dart';
import 'package:space_app/views/bottom-navigation/bottom_navigation.dart';
import 'package:space_app/views/login-screen/login_screen.dart';
import 'package:space_app/widgets/animated_button.dart';
import 'package:space_app/widgets/custom_alert_dialog.dart';
import 'package:space_app/widgets/custom_text_form_field.dart';

class SignUpField extends StatefulWidget {

  const SignUpField({Key? key}) : super(key: key);

  @override
  State<SignUpField> createState() => _SignUpFieldState();
}

class _SignUpFieldState extends State<SignUpField> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 450, width: 450,
      margin: const EdgeInsets.only(left: 15, right: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(

          color: AppColor.secondaryColor.withOpacity(0.8),
          //border: Border.all(color: AppColor.buttonBorder),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [

            BoxShadow(color: Colors.black38, offset: Offset(5, 5), blurRadius: 5, spreadRadius: 5),
            BoxShadow(color: Colors.white24, offset: Offset(-2, -2), blurRadius: 5)
          ]
      ),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(

            "Sign Up Here,",
            style: GoogleFonts.jost(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500, height: 2),
          ),
          const SizedBox(height: 8),

          Text(

            "To explore our space",
            style: GoogleFonts.jost(color: Colors.white70, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 30),

          Form(

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                CustomTextFormField(

                    textEditingController: emailController,
                    keyBoardType: TextInputType.emailAddress,
                    hintText: "Email",
                    icon: Icons.email
                ),
                const SizedBox(height: 20),

                CustomTextFormField(

                    textEditingController: passwordController,
                    keyBoardType: TextInputType.text,
                    hintText: "Password",
                    icon: Icons.key
                )
              ],
            ),
          ),
          const SizedBox(height: 30),

          AnimatedButton(
              text: "Sign Up",
              textColor: Colors.white70,
              onTap: (){

                // alert dialog
                showDialog(
                    context: context,
                    builder: (context) => CustomAlertDialog(

                        title: "Congratulations!",
                        alertMessage: "Sign Up Successful",
                        onTap: (){

                          Navigator.pushReplacement(context, MaterialPageRoute(builder:(_) => const BottomNavigation()));
                        }
                    )
                );
              },
              height: 50,
              width: double.infinity,
              gradient: LinearGradient(

                  begin: Alignment.centerLeft, end: Alignment.centerRight,
                  colors: [

                    AppColor.primaryColor, AppColor.secondaryColor
                  ]
              )
          ),
          const SizedBox(height: 20),

          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(

                  "Already have account.",
                  style: GoogleFonts.nunito(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500)
              ),
              const SizedBox(width: 5),

              TextButton(

                onPressed: (){


                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
                child: Text(

                    "Login",
                    style: GoogleFonts.nunito(color: Colors.deepPurpleAccent, fontSize: 16, fontWeight: FontWeight.w500)
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
