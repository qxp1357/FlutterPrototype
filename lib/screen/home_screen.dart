import 'package:flutter/material.dart';
import 'package:prototype_mudgame/screen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/robbybg.png"),
                  fit: BoxFit.cover)),
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.redAccent, width: 5.0)),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(Icons.exit_to_app_rounded)),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 9,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.redAccent[100],
                              )),
                          Expanded(flex: 4, child: Container()),
                          Expanded(
                              flex: 1,
                              child: Center(
                                child: Column(
                                  children: [],
                                ),
                              )),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BottomButton(() {
                              print("ProfileBtn");
                              Navigator
                                  .of(context)
                                  .push(MaterialPageRoute(
                                  builder: (_) => Profile()));
                                  }, Text("Profile")),
                            BottomButton(() {
                              print("BookBtn");
                            }, Text("Book")),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget BottomButton(onPressed, child) {
    return Center(
        child: ElevatedButton(
            onPressed: onPressed,
            child: child,
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ))); // ButtonStyle(shape: MaterialStateProperty.all(CircleBorder()))));
  }
}
