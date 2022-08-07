import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/components/app-color/app_colors.dart';

class CustomTextFormField extends StatelessWidget {

  final TextEditingController textEditingController;
  final TextInputType keyBoardType;
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const CustomTextFormField({

    Key? key,
    required this.textEditingController,
    required this.keyBoardType,
    required this.hintText,
    required this.icon,
    this.obscureText = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 65,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(20),
        boxShadow: const [

          BoxShadow(color: Colors.white10, offset: Offset(3, 3), blurRadius: 3),
          BoxShadow(color: Colors.black38, offset: Offset(-3, -3), blurRadius: 3),
        ]
      ),
      child: TextFormField(

        controller: textEditingController,
        obscureText: obscureText,
        cursorColor: AppColor.buttonBorder,
        style: GoogleFonts.nunito(color: AppColor.buttonBorder, fontSize: 16),
        decoration: InputDecoration(

          hintText: hintText,
          icon: Icon(icon, color: AppColor.buttonBorder),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none
        ),
      ),
    );
  }
}
