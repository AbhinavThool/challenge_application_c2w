import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  bool isChecked = false;

  List<String> dayList = [
    'Day 1',
    'Day 2',
    'Day 3',
    'Day 4',
    'Day 5',
    'Day 6',
    'Day 7',
    'Day 8',
    'Day 9',
    'Day 10',
    'Day 11',
    'Day 12',
    'Day 13',
    'Day 14',
    'Day 15',
    'Day 16',
    'Day 17',
    'Day 18',
    'Day 19',
    'Day 20',
    'Day 21',
  ];

  List<bool> isCheckedList = List.generate(21, (index) => false);

  Color c1 = const Color.fromRGBO(255, 195, 160, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(
          "Daily Tasks",
          style: GoogleFonts.montserrat(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 239, 214, 172),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 21,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 56,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(239, 214, 172, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(24, 58, 55, 0.25),
                  offset: Offset(0, 6),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    dayList[index],
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(fontSize: 18),
                    ),
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
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new),
        backgroundColor: Colors.brown,
      ),
    );
  }
}
