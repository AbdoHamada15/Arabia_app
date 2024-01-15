import 'package:flutter/material.dart';
import '../../constants/app_bar.dart';
import '../../constants/constants.dart';

class Offices extends StatefulWidget {
  const Offices({super.key});
  @override
  State<Offices> createState() => _OfficesState();
}

class _OfficesState extends State<Offices> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    color: kBackgroundColor,
                    //padding: kIconPadding,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(padding: kIconPadding, child: Appbar()),
                          Container(
                              width: width,
                              height: 80,
                              color: const Color.fromARGB(255, 195, 192, 192),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                          Icons.arrow_back,
                                          color: kGlowColor,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: const BoxDecoration(
                                          color: kGlowColor,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: kIconPadding,
                                          child: Image.asset(
                                            "assets/location.png",
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Our Offices",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: kGlowColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          SizedBox(
                            width: width - 10,
                            child: Image.asset(
                              "assets/offices.png",
                            ),
                          )
                        ])))));
  }
}
