import 'package:flutter/material.dart';
import 'package:space_app/components/app-color/app_colors.dart';

class PlanetsScreen extends StatefulWidget {
  const PlanetsScreen({Key? key}) : super(key: key);

  @override
  State<PlanetsScreen> createState() => _PlanetsScreenState();
}

class _PlanetsScreenState extends State<PlanetsScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColor.secondaryColor,
      body: Center(

        child: Text("Planets Page"),
      ),
    );
  }
}
