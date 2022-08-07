import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/components/app-color/app_colors.dart';
import 'package:space_app/widgets/animated_button.dart';
import 'package:space_app/widgets/custom_text_form_field.dart';

class LoginField extends StatefulWidget {

  const LoginField({Key? key}) : super(key: key);

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 500, width: 500,
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

            "Login Here,",
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
          const SizedBox(height: 15),

          Row(

            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              TextButton(

                  onPressed: (){},
                  child: Text(

                    "Forgot Password", textAlign: TextAlign.center,
                    style: GoogleFonts.jost(color: AppColor.buttonBorder, fontSize: 18),
                  )
              )
            ],
          ),
          const SizedBox(height: 15),

          AnimatedButton(
              text: "Login",
              textColor: Colors.white70,
              onTap: (){},
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

                  "Don't have account?",
                  style: GoogleFonts.nunito(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500)
              ),
              const SizedBox(width: 5),

              TextButton(

                  onPressed: (){},
                  child: Text(

                      "Sign Up",
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
