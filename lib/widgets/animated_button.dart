import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/components/app-color/app_colors.dart';

class AnimatedButton extends StatefulWidget {

  final String text;
  VoidCallback onTap;
  final double height, width;
  Color? textColor;
  Gradient? gradient;

  AnimatedButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.height,
    required this.width,
    required this.gradient,
    this.textColor = Colors.black
  }) : super(key: key);

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> with SingleTickerProviderStateMixin{

  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {

    _controller = AnimationController(

      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    _scale = 1 - _controller.value;

    return  Center(

      child: GestureDetector(

        onTap: widget.onTap,
        onTapDown: _tapDown,
        onTapUp: _tapUp,
        child: Transform.scale(

          scale: _scale,
          child: _animatedButton(),
        ),

      ),
    );
  }

  Widget  _animatedButton() {

    return Container(

      height: widget.height,
      width: widget.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(

        gradient: widget.gradient,
        border: Border.all(color: AppColor.buttonBorder, width: 1.2),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: const [

          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: 10,
            color: Colors.black54,
          ),
        ],
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const SizedBox(width: 10),
          Text(
            widget.text,
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: widget.textColor),
          ),
        ],
      ),
    );
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }
  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
}