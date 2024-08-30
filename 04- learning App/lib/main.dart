import 'package:flutter/material.dart';
import 'package:learning_app/screens/colors1.dart';
import 'package:learning_app/screens/family_members.dart';
import 'package:learning_app/screens/numbers.dart';
import 'package:learning_app/screens/phrases.dart';

import 'componant/AllCatigores.dart';

void main() {
  runApp(const LearningApp());
}

class LearningApp extends StatelessWidget {
  const LearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 125, 142),
        appBar: AppBar(
          toolbarHeight: 77,
          title: const Text("Leaning App"),
          backgroundColor: const Color.fromARGB(255, 48, 91, 155),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Category(
                screen: () => const numbers(),
                color1: const Color.fromARGB(255, 235, 205, 94),
                text1: "Numbers",
              ),
              Category(
                screen: () => const family_members(),
                color1: const Color.fromARGB(255, 255, 255, 0),
                text1: "Family Members",
              ),
              Category(
                screen: () => const colors1(),
                color1: const Color.fromARGB(255, 255, 230, 0),
                text1: "Colors",
              ),
              Category(
                screen: () => const phrases(),
                color1: const Color.fromARGB(255, 255, 183, 0),
                text1: "Phrases",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
