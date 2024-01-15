import 'package:flutter/material.dart';

import 'constants.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/moon.png",
            width: 23,
            height: 23,
          ),
        ),
        const SizedBox(
          width: 60,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/logo.png",
            width: 160,
            height: 95,
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        const Text(
          "عربي",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: kgreyColor),
        )
      ],
    );
  }
}
