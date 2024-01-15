import 'package:flutter/material.dart';

import 'constants.dart';

class ProductsDetail extends StatefulWidget {
  final String name;
  final String image;
  final Color color;
  final String title;
  const ProductsDetail(
      {super.key,
      required this.name,
      required this.image,
      required this.color,
      required this.title});

  @override
  State<ProductsDetail> createState() => _ProductsDetailState();
}

class _ProductsDetailState extends State<ProductsDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 7, bottom: 7),
        child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
                child: ListTile(
              leading: Container(
                decoration: const BoxDecoration(
                  color: kwhiteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Image.asset(widget.image),
                ),
              ),
              title: Text(
                widget.name,
                style: styleMinButton,
              ),
              subtitle: Text(
                widget.title,
                style: styleButton,
              ),
              trailing: const SizedBox(
                height: 30,
                width: 30,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: kwhiteColor,
                  size: 33,
                ),
              ),
            ))));
  }
}
