import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 30,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://media.licdn.com/dms/image/D4D03AQEoOg83YiF6Xg/profile-displayphoto-shrink_800_800/0/1672695642434?e=2147483647&v=beta&t=hFlHM9_Tnr_JMqtngfblCBkEPSCgyb7ALWhEQHHCoW8',
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 61, 61, 61),
                          offset: Offset(0, 10),
                          blurRadius: 10,
                          spreadRadius: -5,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Saurabh",
                        // maplist[index].name,
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Hello, I am Saurabh, I know coding and i can build apps, I am here for mental peace',
                          // ${maplist[index].name}
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.brown[800],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '132',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Likes',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.brown[800],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '10',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Current Challenges',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.brown[800],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.done_all,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '12',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Completed Challenges',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Details",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  //shrinkWrap: true,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.brown[800],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.brown,
                            offset: Offset(0, 4),
                            spreadRadius: -1,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email Id",
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Saurabhgheware9447@gmail.com",
                            // maplist[index].mail,
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.brown[800],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.brown,
                            offset: Offset(0, 4),
                            spreadRadius: -1,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact Number",
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.brown[800],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.brown,
                            offset: Offset(0, 4),
                            spreadRadius: -1,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Posts",
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "4",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.brown[800],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.brown,
                            offset: Offset(0, 4),
                            spreadRadius: -1,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Joined date",
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "14/03/2024",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
