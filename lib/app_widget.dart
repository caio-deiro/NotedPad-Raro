import 'package:flutter/material.dart';
import 'package:projeto1/modules/createnote/createnote_page.dart';
import 'package:projeto1/modules/home/home_page.dart';
import 'package:projeto1/modules/notesPage/note_page.dart';
import 'package:projeto1/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'createnote', home: SplashPage(), routes: {
      'splash': (context) => SplashPage(),
      'home': (context) => HomePage(),
      'createnote': (context) => CreatenotePage(),
      'notepage': (context) => NotePage(),
    });
  }
}
