import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {

  final String imagePath;
  final double height, width;

  const ImageContainer({
    Key? key,
    required this.imagePath,
    this.height = 150,
    this.width = 150
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(

      height: height,
      width: width,
      decoration: BoxDecoration(

        boxShadow: const [

          BoxShadow(color: Colors.black38, offset: Offset(5, 5), blurRadius: 5, spreadRadius: 5),
          BoxShadow(color: Colors.white24, offset: Offset(-2, -2), blurRadius: 3),
        ],
        image: DecorationImage(

            image: AssetImage(imagePath),
            fit: BoxFit.cover
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
