import 'package:challenge_application_c2w/Screens/interest.dart';
import 'package:challenge_application_c2w/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreenName extends StatefulWidget {
  const WelcomeScreenName({super.key});

  @override
  State<WelcomeScreenName> createState() => _WelcomeScreenNameState();
}

class _WelcomeScreenNameState extends State<WelcomeScreenName> {
  final GlobalKey<FormFieldState> _name = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _gender = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _age = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _mail = GlobalKey<FormFieldState>();

  final TextEditingController agecontroller = TextEditingController();
  final TextEditingController mailcontroller = TextEditingController();

  final TextEditingController gendercontroller = TextEditingController();

  final TextEditingController namecontroller = TextEditingController();
  void showData() async {
    print("in show data");
    maplist = await getTasks();
    print("after task");
    print(await maplist);
    //print(await maplist);
  }

  void submit() async {
    print('Submitting data...');
    await insertNewTask(Days21(
        name: namecontroller.text,
        mail: mailcontroller.text,
        gender: gendercontroller.text,
        age: int.parse(agecontroller.text)));
    print('Data submitted successfully.');
    print(await maplist);
    setState(() {
      showData();
    });
    namecontroller.clear();
    agecontroller.clear();
    mailcontroller.clear();
    gendercontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color.fromRGBO(239, 214, 172, 1),
              Color.fromRGBO(255, 195, 160, 1),
            ],
          ),
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
                  color: Color.fromRGBO(24, 58, 55, 1),
                ),
              ),
            ),
            Text(
              "Please Enter Your Deatils",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(24, 58, 55, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      controller: namecontroller,
                      key: _name,
                      maxLength: 50,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Name";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        hintText: 'Enter Your Name',
                        filled: true,
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: mailcontroller,
                      key: _mail,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Email";
                        } else {
                          return null;
                        }
                      },
                      maxLength: 50,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'Enter your Email',
                        filled: true,
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: gendercontroller,
                      key: _gender,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter gender";
                        } else {
                          return null;
                        }
                      },
                      maxLength: 10,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        hintText: 'Enter your gender',
                        filled: true,
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: agecontroller,
                      key: _age,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Age";
                        } else {
                          return null;
                        }
                      },
                      maxLength: 3,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Enter your age',
                        filled: true,
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                bool nameFlag = _name.currentState!.validate();
                bool genderFlag = _gender.currentState!.validate();
                bool ageFlag = _age.currentState!.validate();
                bool mailFlag = _mail.currentState!.validate();

                setState(() {
                  if (nameFlag && genderFlag && ageFlag && mailFlag) {
                    submit();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InterestsScreen(),
                      ),
                    );
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(143, 47),
                backgroundColor: const Color.fromRGBO(24, 58, 55, 1),
              ),
              child: Text(
                "Submit",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
