import 'package:flutter/material.dart';

import '../home/pages/motor_1.dart';
import 'constants.dart';
import 'products_details.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        InkWell(
          onTap: () {
            //String title0;
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Motor()));
          },
          child: const ProductsDetail(
            name: "Motor",
            image: "assets/motor.png",
            color: kCardColor1,
            title: "TPL & Comprehensive",
          ),
        ),
        InkWell(
          onTap: () {
            //String title0;
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Motor()));
          },
          child: const ProductsDetail(
            name: "Medical",
            image: "assets/medical.png",
            color: kCardColor2,
            title: "SME Medical",
          ),
        ),
        InkWell(
          onTap: () {
            //String title0;
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Motor()));
          },
          child: const ProductsDetail(
            name: "Visit Visa",
            image: "assets/family_1.png",
            color: kCardColor3,
            title: "Extension Insurance",
          ),
        ),
        InkWell(
          onTap: () {
            //String title0;
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Motor()));
          },
          child: const ProductsDetail(
            name: "E-Services",
            image: "assets/services.png",
            color: kCardColor1,
            title: "Medical & Motor",
          ),
        ),
      ],
    );
  }
}
