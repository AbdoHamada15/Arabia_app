import 'package:flutter/material.dart';

import 'constants.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onTap;
  final double? btnWidth;
  final double? btHeight;
  final String btnText;
  final Color btnColor;

  const CustomButton(
      {super.key,
      required this.onTap,
      required this.btnWidth,
      required this.btHeight,
      required this.btnText,
      required this.btnColor});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: SizedBox(
        width: widget.btnWidth,
        height: widget.btHeight,
        child: ElevatedButton(
            onPressed: widget.onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.btnColor, // Background color
            ),
            child: Center(
              child: Text(
                widget.btnText,
                style: styleButton,
              ),
            )),
      ),
    );
  }
}
