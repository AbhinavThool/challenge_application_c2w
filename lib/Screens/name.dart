
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'gender.dart';

class welcomescreen2 extends StatefulWidget {
  const welcomescreen2({super.key});

  @override
  State<welcomescreen2> createState() => _welcomescreen2State();
}

class _welcomescreen2State extends State<welcomescreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: RadialGradient(colors: [
            Color.fromRGBO(239, 214, 172, 1),
            Color.fromRGBO(255, 195, 160, 1)
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: GoogleFonts.museoModerno(
                  textStyle: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(24, 58, 55, 1))),
            ),
            Text(
              "Please Enter Your Name",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(24, 58, 55, 1))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                   setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const welcomescreen3()));
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(143, 47),
                  backgroundColor: const Color.fromRGBO(24, 58, 55, 1),),
                child: Text(
                  "Submit",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ))
          ],
        ),
      ),
    );
  }
}
