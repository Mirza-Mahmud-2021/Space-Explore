import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/components/app-color/app_colors.dart';
import 'package:space_app/views/home-screen/tab-bar/home_tab_bar.dart';
import 'package:space_app/widgets/custom_searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColor.secondaryColor,

      body: SafeArea(

        child: SingleChildScrollView(

          child: Padding(

            padding: const EdgeInsets.all(20),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 30),

                RichText(

                  text: TextSpan(
                    children: [

                      TextSpan(

                        text: "Hello, ",
                        style: GoogleFonts.nunito(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500)
                      ),
                      TextSpan(

                        text: "Piyash",
                        style: GoogleFonts.nunito(color: AppColor.buttonBorder, fontSize: 22, fontWeight: FontWeight.w500)
                      )
                    ]
                  ),
                ),
                const SizedBox(height: 20),

                CustomSearchBar(

                    textEditingController: searchController,
                    onTap: (){},
                ),
                const SizedBox(height: 40),

                // tab bar
                const HomeTabBar()
              ],
            ),
          ),
        ),
      )
    );
  }
}
