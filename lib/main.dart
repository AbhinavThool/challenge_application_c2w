import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';

import 'Screens/name.dart';

dynamic database;
int index = 0;
List<Days21> maplist = List.empty(growable: true);

class Days21 {
  int? id;
  String name;
  String gender;
  int age;
  String mail;

  Days21({
    this.id,
    required this.name,
    required this.gender,
    required this.age,
    required this.mail,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'gender': gender,
      'age': age,
      'mail': mail,
    };
  }

  @override
  String toString() {
    return '{id:$id,name:$name,gender:$gender,mail:$mail,age:$age}';
  }
}

Future insertNewTask(Days21 obj) async {
  print("in insert");
  final localdb = await database;

  await localdb.insert(
    "userdata",
    obj.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Days21>> getTasks() async {
  print("in gettask");
  final localdb = await database;

  List<Map<String, dynamic>> userList = await localdb.query("userdata");
  print("in last of get");
  print(userList);
  return List.generate(
      userList.length,
      (i) => Days21(
          id: userList[i]['id'],
          name: userList[i]['name'],
          gender: userList[i]['gender'],
          age: userList[i]['age'],
          mail: userList[i]['mail']));
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = await openDatabase(
    path.join(await getDatabasesPath(), "days21DB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE userdata
          (id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT,
          mail TEXT,
          gender TEXT,
           age TEXT) ''');

      await db.execute('''CREATE TABLE task
          (id INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT,
          description Text,
           date INTEGER) ''');
    },
  );
  //maplist = await getTasks();
  //print(await getTasks());
  //print(await maplist);
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
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("In 1st build");
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 239, 214, 172),
            Color.fromARGB(255, 255, 195, 160),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
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
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomeScreenName(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("In 2nd build");
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 239, 214, 172),
              Color.fromARGB(255, 255, 195, 160),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Text(
            "Welcome",
            style: GoogleFonts.museoModerno(
              fontWeight: FontWeight.w500,
              fontSize: 70,
            ),
          ),
        ),
      ),
    );
  }
}
