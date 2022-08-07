import 'package:flutter/material.dart';
import 'package:space_app/components/app-color/app_colors.dart';

class NewsScreen extends StatelessWidget {

  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColor.secondaryColor,
      body: Center(

        child: Text("News Screen"),
      ),
    );
  }
}
