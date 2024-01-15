import 'package:flutter/material.dart';

import '../../constants/app_bar.dart';
import '../../constants/constants.dart';

class ArabiaCare extends StatefulWidget {
  const ArabiaCare({super.key});

  @override
  State<ArabiaCare> createState() => _ArabiaCareState();
}

class _ArabiaCareState extends State<ArabiaCare> {
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
                                            "assets/mic.png",
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Arabia Care",
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
                          const Text(
                            "     Support Tickets",
                            style: styleTitle,
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Container(
                              width: width,
                              height: 55,
                              color: kwhiteColor,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 25,
                                              height: 25,
                                              decoration: const BoxDecoration(
                                                color: kwhiteColor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(50),
                                                ),
                                              ),
                                              child: Image.asset(
                                                "assets/writing.png",
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text(
                                              "Submit new ticket ",
                                              style: styleTitle,
                                            ),
                                          ],
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios,
                                          color: kgreyColor,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          SizedBox(
                            height: height * 0.004,
                          ),
                          Container(
                              width: width,
                              height: 55,
                              color: kwhiteColor,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 25,
                                              height: 25,
                                              decoration: const BoxDecoration(
                                                color: kwhiteColor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(50),
                                                ),
                                              ),
                                              child: Image.asset(
                                                "assets/writing.png",
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text(
                                              "Check Previous ticket status",
                                              style: styleTitle,
                                            ),
                                          ],
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios,
                                          color: kgreyColor,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          const Text(
                            "     Support Tickets",
                            style: styleTitle,
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Container(
                              width: width,
                              height: 55,
                              color: kwhiteColor,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.phone_in_talk_outlined,
                                              color: kGlowColor,
                                              size: 35,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Customer Care",
                                              style: styleTitle,
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: kgreyColor,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          SizedBox(
                            height: height * 0.004,
                          ),
                          Container(
                              width: width,
                              height: 55,
                              color: kwhiteColor,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.phone_in_talk_outlined,
                                                color: kGlowColor,
                                                size: 35,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Troll Free",
                                                style: styleTitle,
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: kgreyColor,
                                            size: 20,
                                          ),
                                        ],
                                      ))
                                ],
                              )),
                          SizedBox(
                            height: height * 0.004,
                          ),
                          Container(
                              width: width,
                              height: 55,
                              color: kwhiteColor,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.phone_in_talk_outlined,
                                              color: kGlowColor,
                                              size: 35,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Medical Aprovals",
                                              style: styleTitle,
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: kgreyColor,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          const Text(
                            "     Reach out to us",
                            style: styleTitle,
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Container(
                              width: width,
                              height: 55,
                              color: kwhiteColor,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: kGlowColor,
                                              size: 35,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Our Offices",
                                              style: styleTitle,
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: kgreyColor,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          SizedBox(
                            height: height * 0.004,
                          ),
                        ])))));
  }
}
