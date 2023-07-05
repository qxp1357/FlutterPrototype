import 'package:flutter/material.dart';
import 'package:prototype_mudgame/fireBaseService.dart';
import 'package:prototype_mudgame/screen/home_screen.dart';

//23.6.26 : 시작버튼 만들어야함
//23.6.27 : firebase 설치 완료 - 데이터 전송 테스트 해야함
//23.7.4 : firebase 일단 이후로 밀어놓음, 네비게이터 먼저 페이지 이동부터 구성

class IntroScreen extends StatefulWidget {
  final FireModel fireModel;

  const IntroScreen({required this.fireModel, Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/introbg.png"),
                fit: BoxFit.cover)),
        child: Align(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                //title
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "TITLE",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => HomeScreen()));
                      },
                      child: Text(
                        "Start",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
