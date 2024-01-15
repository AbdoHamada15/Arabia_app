import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:arabia_app/home/pages/motor_1.dart';
import 'package:arabia_app/home/pages/motor_2.dart';

import 'constants/constants.dart';
import 'home/home_screen.dart';
import 'home/nav_bar/arabic_care.dart';
import 'home/nav_bar/offices.dart';
import 'home/nav_bar/submit_claim.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Arabia',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => const SplashScreen(),
          'motor': (context) => const Motor(),
          'motor2': (context) => const VehicleInfo(),
          'arabiacare': (context) => const ArabiaCare(),
          'submitclain': (context) => const SubmitClaim(),
          'offices': (context) => const Offices(),
        });
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: AvatarGlow(
        startDelay: const Duration(milliseconds: 250),
        glowColor: kGlowColor,
        glowShape: BoxShape.circle,
        curve: Curves.fastOutSlowIn,
        child: Material(
          elevation: 6.0,
          shape: const CircleBorder(),
          child: CircleAvatar(
            backgroundColor: kwhiteColor,
            radius: 200.0,
            child: Image.asset(
              'assets/logo.png',
              height: 170,
            ),
          ),
        ),
      ),
      duration: 2000,
      nextScreen: const HomeScreen(),
      splashIconSize: 300,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
