import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detail_interest.dart';

class interstspage1 extends StatefulWidget {
  const interstspage1({super.key});

  @override
  State<interstspage1> createState() => _interstspage1State();
}

class _interstspage1State extends State<interstspage1> {
  Color c1 = const Color.fromRGBO(255, 195, 160, 1);
  List logo = [
    "assets/images/personalgrowth.svg",
    "assets/images/Relationships.svg",
    "assets/images/lifestyle.svg",
    "assets/images/productivity.svg",
    "assets/images/selflove.svg",
    "assets/images/learning.svg",
    "assets/images/mentalhealth.svg",
    "assets/images/campervan.svg"
        "assets/images/productivity.svg",
    "assets/images/healthcare.svg"
  ];

  List<bool> isCheckedList = List.generate(10, (index) => false);
  List title = [
    "Personal Growth",
    "Relationships",
    "Lifestyle",
    "Productivity",
    "Self Love",
    "Learning",
    "Mental Health",
    "Adventure",
    "Positivity",
    "Health"
  ];

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(colors: [
              Color.fromRGBO(239, 214, 172, 1),
              Color.fromRGBO(255, 195, 160, 1)
            ]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  "Please Choose Your Interests",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(24, 58, 55, 1))),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: logo.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        height: 56,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(239, 214, 172, 1),
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(24, 58, 55, 0.25),
                                offset: Offset(0, 6),
                                blurRadius: 20,
                              )
                            ]),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: SvgPicture.asset(
                                "${logo[index]}",
                                width: 36,
                                height: 36,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                title[index],
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(fontSize: 18)),
                              ),
                            ),
                            const Spacer(),
                            Checkbox(
                                side: const BorderSide(color: Colors.black),
                                fillColor: MaterialStatePropertyAll(c1),
                                checkColor: Colors.black,
                                value: isCheckedList[index],
                                onChanged: (newValue) {
                                  setState(() {
                                    isCheckedList[index] = newValue!;
                                  });
                                }),
                            const SizedBox(
                              width: 30,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const interstspage2(),
              ),
            );
          });
        },
        backgroundColor: const Color.fromRGBO(239, 214, 172, 1),
        child: const Icon(
          Icons.arrow_forward,
          size: 30,
        ),
      ),
    );
  }
}
