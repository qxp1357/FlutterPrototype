import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/schedulebg.png"),
                  fit: BoxFit.cover)),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text("Profile")
              ],
            ),
          ),
        ),
        ),
      ),
    );
  }
}
