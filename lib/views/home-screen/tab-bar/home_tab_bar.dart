import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/components/app-color/app_colors.dart';
import 'package:space_app/views/bottom-navigation/bottom_navigation.dart';
import 'package:space_app/views/home-screen/home_screen.dart';
import 'package:space_app/views/news-screen/news_screen.dart';

class HomeTabBar extends StatefulWidget {

  const HomeTabBar({Key? key}) : super(key: key);

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {

  List<Widget> screens = [const HomeScreen(), const NewsScreen()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Row(

      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        tabBarItem("Recent News", 0),
        const SizedBox(width: 2),

        tabBarItem("Popular News", 1)
      ],
    );
  }

  tabBarItem(String itemName, int index) {

    return InkWell(

      onTap: (){

        setState(() {

          currentIndex = index;
        });
      },
      child: Container(

        height: 45, width: 150,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(

            color: Colors.transparent,
            border: Border(
                bottom: BorderSide(
                    color: index == currentIndex ? AppColor.iconColor : Colors.transparent,
                    width: 3
                )
            )
        ),
        child: Text(

          itemName, textAlign: TextAlign.center,
          style: GoogleFonts.nunito(color: Colors.white70, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
