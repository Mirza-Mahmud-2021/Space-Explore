import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:space_app/components/app-color/app_colors.dart';

class CustomSearchBar extends StatefulWidget {

  final TextEditingController textEditingController;

  const CustomSearchBar({

    Key? key,
    required this.textEditingController,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          TextField()
        ],
      ),
    );
  }
}
