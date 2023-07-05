import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:prototype_mudgame/firebase_options.dart';
import 'package:prototype_mudgame/fireBaseService.dart';
import 'package:prototype_mudgame/screen/intro_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FireModel fireModel = FireModel();

  runApp(MaterialApp(
    home: IntroScreen(fireModel:fireModel),
  )
  );
}
