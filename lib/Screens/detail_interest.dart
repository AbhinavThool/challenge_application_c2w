import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'drawer.dart';

class interstspage2 extends StatefulWidget {
  const interstspage2({super.key});

  @override
  State<interstspage2> createState() => _interstspage2State();
}

List<bool> isCheckedList = List.generate(6, (index) => false);

class _interstspage2State extends State<interstspage2> {
  Color c1 = const Color.fromRGBO(255, 195, 160, 1);

  List title = [
    "Life Hacks",
    "Social Anxiety",
    "Meditation",
    "Digital Declutter",
    "Adventurous spirit",
    "Walking",
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                Text(
                  "Choose what challenges you would like to take",
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
                    itemCount: title.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      title[index],
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                            fontSize: 18,
                                            color:
                                                Color.fromRGBO(24, 58, 55, 1),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
                                      style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(fontSize: 18)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
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
