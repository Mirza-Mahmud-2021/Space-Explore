import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/components/app-color/app_colors.dart';

class AnimatedAppbarIconButton extends StatefulWidget {

  final IconData icon;
  VoidCallback onTap;
  final double height, width;
  Color? iconColor;
  Gradient? gradient;

  AnimatedAppbarIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    this.height = 45,
     this.width = 45,
    required this.gradient,
    required this.iconColor
  }) : super(key: key);

  @override
  State<AnimatedAppbarIconButton> createState() => _AnimatedAppbarIconButtonState();
}

class _AnimatedAppbarIconButtonState extends State<AnimatedAppbarIconButton> with SingleTickerProviderStateMixin{

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
        shape: BoxShape.circle,
        boxShadow: const [

          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 5,
            color: Colors.white10,
          ),
          BoxShadow(
            offset: Offset(-3, -3),
            blurRadius: 5,
            color: Colors.white10,
          ),
        ],
      ),
      child: Center(

        child: Icon(widget.icon, color: widget.iconColor)
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