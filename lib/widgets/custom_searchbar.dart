import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/components/app-color/app_colors.dart';

class CustomSearchBar extends StatefulWidget {

  final TextEditingController textEditingController;
  final VoidCallback onTap;

  const CustomSearchBar({

    Key? key,
    required this.textEditingController,
    required this.onTap
  }) : super(key: key);

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 65, width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff28303D),
        boxShadow: const [

          BoxShadow(color: Colors.black54, offset: Offset(3, 3), blurRadius: 5, inset: true),
          BoxShadow(color: Colors.white24, offset: Offset(-3, -3), blurRadius: 5, inset: true)
        ]
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Expanded(

            child: TextField(

              controller: widget.textEditingController,
              cursorColor: Colors.white60,
              style: GoogleFonts.nunito(color: Colors.white60, fontSize: 16),
              decoration: const InputDecoration(

                icon: Icon(Icons.search, color: Colors.white60),
                hintText: "Search",
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),

          GestureDetector(

            onTap: widget.onTap,
            child: Container(

              height: 45, width: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(

                  begin: Alignment.centerLeft, end: Alignment.centerRight,
                  colors: [AppColor.buttonBorder, AppColor.bottomNavIconActive]
                )
              ),
              child: const Icon(Icons.question_mark, color: Colors.white),
            ),
          )
        ],
      )
    );
  }
}
