import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/name.dart';

void main() {
  runApp(const MyApp());
}
const primaryColor = Color.fromARGB(255, 239, 214, 172);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    print("In init");
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    print("In 1st build");
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 239, 214, 172),
          Color.fromARGB(255, 255, 195, 160)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),

      child: Image.asset("assets/LOGO.png"),
      //child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    print("In init");
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const welcomescreen2())));
  }
  @override
  Widget build(BuildContext context) {
    print("In 2nd build");
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 239, 214, 172),
            Color.fromARGB(255, 255, 195, 160)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Center(
          child: Text(
                "Welcome",
                style: GoogleFonts.museoModerno(fontWeight: FontWeight.w500, fontSize: 70)
                
              ),
        ),
      ),
      
    );
  }
}
