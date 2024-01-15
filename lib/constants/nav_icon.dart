import 'package:flutter/material.dart';

import 'constants.dart';

class NavIcon extends StatefulWidget {
  final String image;
  final String navText;

  const NavIcon({super.key, required this.image, required this.navText});

  @override
  State<NavIcon> createState() => _NavIconState();
}

class _NavIconState extends State<NavIcon> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: Padding(
            padding: kIconPadding,
            child: Image.asset(
              widget.image,
            ),
          ),
        ),
        Text(widget.navText, style: styleIcon)
      ],
    );
  }
}
