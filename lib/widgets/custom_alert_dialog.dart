import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:space_app/components/app-color/app_colors.dart';
import 'package:space_app/views/bottom-navigation/bottom_navigation.dart';
import 'package:space_app/widgets/animated_button.dart';

class CustomAlertDialog extends StatefulWidget {

  final String alertMessage, title;

  const CustomAlertDialog({
    Key? key,
    required this.title,
    required this.alertMessage
  }) : super(key: key);

  @override
  State<CustomAlertDialog> createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {

  @override
  Widget build(BuildContext context) {

    return Dialog(

      backgroundColor: Colors.white60,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(

        height: 460, width: double.infinity,
        decoration: BoxDecoration(

          color: AppColor.secondaryColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(

          children: [

            Container(

              height: 250, width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(

                  alignment: Alignment.center,
                  image: const AssetImage("lib/assets/images/alert-dialog-bg.jpg"),
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
                  fit: BoxFit.fill
                )
              ),
              child: Stack(
                
                children: [
                  
                  Align(
                    
                    alignment: Alignment.center,
                    child: SizedBox(

                      width: 130, height: 130,
                      child: Lottie.asset("lib/assets/animations/login-signup.json"),
                    )
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),

            Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(

                  widget.title,
                  style: GoogleFonts.jost(

                      color: AppColor.iconColor,
                      fontSize: 26, fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),

                Text(

                  widget.alertMessage,
                  style: GoogleFonts.jost(

                      color: AppColor.buttonBorder,
                      fontSize: 20, fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),

            AnimatedButton(

                text: "OK",
                textColor: Colors.white70,
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (_) => const BottomNavigation()));
                },
                height: 40,
                width: 120,
                gradient: LinearGradient(

                  begin: Alignment.centerLeft, end: Alignment.centerRight,
                  colors: [AppColor.primaryColor, AppColor.secondaryColor]
                )
            )
          ],
        ),
      ),
    );
  }
}
