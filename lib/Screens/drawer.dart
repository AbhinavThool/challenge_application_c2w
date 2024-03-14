import 'package:challenge_application_c2w/Screens/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  int index = 0;

  //List menu = ['Saurabh', 'gheware'];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text("Homepage"),
          leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu_outlined),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
          backgroundColor: const Color.fromARGB(255, 239, 214, 172),
        ),
        drawer: Drawer(
          child: ListView(children: [
            const DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 127, 167, 236)),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      "Saurabh",
                      style: TextStyle(fontSize: 60),
                    )
                  ],
                )),
            ListTile(
                leading: const Icon(Icons.manage_accounts_rounded),
                title: const Text("Profile"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.edit),
                title: const Text("Blog"),
                onTap: () => Navigator.pop(context)),
            ListTile(
                leading: const Icon(Icons.group),
                title: const Text("community Challenge"),
                onTap: () => Navigator.pop(context)),
            ListTile(
                leading: const Icon(Icons.group_outlined),
                title: const Text("Group Challenge"),
                onTap: () => Navigator.pop(context)),
            ListTile(
                leading: const Icon(Icons.wallpaper),
                title: const Text("wallpaper"),
                onTap: () => Navigator.pop(context)),
            ListTile(
                leading: const Icon(Icons.notifications_active),
                title: const Text("Remainder"),
                onTap: () => Navigator.pop(context)),
            ListTile(
                leading: const Icon(Icons.question_mark_sharp),
                title: const Text("FAQ"),
                onTap: () => Navigator.pop(context)),
            ListTile(
                leading: const Icon(Icons.queue_music),
                title: const Text("Music"),
                onTap: () => Navigator.pop(context)),
            ListTile(
                leading: const Icon(Icons.multiple_stop_sharp),
                title: const Text("contact us"),
                onTap: () => Navigator.pop(context)),
            const Text(
                "--------------------------------------------------------------------------------"),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Setting"),
                onTap: () => Navigator.pop(context)),
            ListTile(
                leading: const Icon(Icons.logout_outlined),
                title: const Text("Log Out"),
                onTap: () => Navigator.pop(context)),
          ]),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 239, 214, 172),
              Color.fromARGB(255, 255, 195, 160)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ));
  }
}
