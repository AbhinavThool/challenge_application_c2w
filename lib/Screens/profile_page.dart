import 'package:flutter/material.dart';

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
            top: 80,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
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
                  SizedBox(width: 20),
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
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Saurabh Gheware'),
                      Text('Male'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
