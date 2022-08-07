import 'package:flutter/material.dart';
import 'package:space_app/components/app-color/app_colors.dart';
import 'package:space_app/views/home-screen/home_screen.dart';
import 'package:space_app/views/news-screen/news_screen.dart';
import 'package:space_app/views/planets-screen/planets_screen.dart';

class BottomNavigation extends StatefulWidget {

  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  List<Widget> screens = [const HomeScreen(), const PlanetsScreen(), const NewsScreen()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColor.secondaryColor,
      body: screens[currentIndex],
      bottomNavigationBar: Container(

        height: 60, width: 200,
        margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(

            color: AppColor.secondaryColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [

              BoxShadow(color: Colors.black54, offset: Offset(5, 5), blurRadius: 5, spreadRadius: 5),
              BoxShadow(color: Colors.white12, offset: Offset(-3, -3), blurRadius: 3)
            ]
        ),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            buildNavbarItem("lib/assets/icons/home.png", 0),
            buildNavbarItem("lib/assets/icons/planet.png", 1),
            buildNavbarItem("lib/assets/icons/newspaper.png", 2),
          ],
        ),
      ),
    );
  }

  Widget buildNavbarItem(String imagePath, int index){

    return GestureDetector(

        onTap: (){

          setState(() {

            currentIndex = index;
          });
        },
        child: Image.asset(
          imagePath,
          height: 25, width: 25,
          color: index == currentIndex ? AppColor.bottomNavIconActive : Colors.white60,
        )
    );
  }
}
