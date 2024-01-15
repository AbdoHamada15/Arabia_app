import 'package:flutter/material.dart';
import 'package:arabia_app/constants/app_bar.dart';
import 'package:arabia_app/constants/constants.dart';
import 'package:arabia_app/constants/nav_icon.dart';
import 'package:arabia_app/home/login.dart';
import 'package:arabia_app/home/nav_bar/offices.dart';
import 'package:arabia_app/home/nav_bar/submit_claim.dart';
import 'package:arabia_app/home/register.dart';
import '../constants/products.dart';
import 'nav_bar/arabic_care.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  String? selectedCategorie = "Login";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    //final double width = MediaQuery.of(context).size.width;
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          color: kBackgroundColor,
          child: Padding(
            padding: kIconPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Appbar(),
                const Row(
                  children: [
                    Text(
                      "Continuo as a guest",
                      style: styleTitle2,
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const Products(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "......................... Or ...........................",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: kGlowColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: kwhiteColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          child: Align(
                            alignment: Alignment.center,
                            child: TabBar(
                              controller: tabController,
                              indicatorColor: k1Color,
                              labelColor: k1Color,
                              isScrollable: false,
                              labelPadding:
                                  const EdgeInsets.only(left: 1, right: 1),
                              unselectedLabelColor: kCardColor1,
                              tabs: const [
                                Tab(
                                  child: Text(
                                      '               Login               ',
                                      style: styleTitle2),
                                ),
                                Tab(
                                  child: Text(
                                      '            Register              ',
                                      style: styleTitle2),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //tabbarView
                        SizedBox(
                          width: double.infinity,
                          height: 450,
                          child: TabBarView(
                              controller: tabController,
                              children: const <Widget>[
                                Login(),
                                Register(),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: kwhiteColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ArabiaCare()));
                          },
                          child: const NavIcon(
                              image: "assets/mic.png", navText: "Arabia Care"),
                        ),
                        Image.asset(
                          "assets/line.png",
                          width: 40,
                          height: 70,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SubmitClaim()));
                          },
                          child: const NavIcon(
                              image: "assets/writing.png",
                              navText: "Submit Clain"),
                        ),
                        Image.asset(
                          "assets/line.png",
                          width: 40,
                          height: 70,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Offices()));
                          },
                          child: const NavIcon(
                              image: "assets/location.png", navText: "Offices"),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
