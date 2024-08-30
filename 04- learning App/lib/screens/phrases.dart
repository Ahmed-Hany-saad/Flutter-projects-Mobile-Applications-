import 'package:flutter/material.dart';

import '../componant/PhrasesCatigory.dart';

// ignore: camel_case_types
class phrases extends StatelessWidget {
  const phrases({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenWidth * 0.26,
          backgroundColor: const Color.fromARGB(223, 255, 199, 46),
          title: Text(
            "Phrases \n(Furēzu フレーズ)",
            style: TextStyle(fontSize: screenWidth * 0.07, color: Colors.black),
          ),
          leading: GestureDetector(
            child: Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.01,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_double_arrow_left_sharp,
                  size: screenWidth * 0.12,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              NumberphasesContainers(
                  text1:
                      " What is your name ?\n 名前はなんですか\n (Namae wa nandesu ka ?)",
                  sound1: "assets/sounds/phrases/what_is_your_name.wav"),
              NumberphasesContainers(
                  text1:
                      " How are you feeling ?\n ご気分はいかがですか\n (Go kibunwaikgadesuka?)",
                  sound1: "assets/sounds/phrases/how_are_you_feeling.wav"),
              NumberphasesContainers(
                  text1: " Where are you going ?\n どこに行くの\n (Doko ni iku no ?)",
                  sound1: "assets/sounds/phrases/where_are_you_going.wav"),
              NumberphasesContainers(
                  text1: " Are you coming ?\n 来ますかくの\n (Kimasu ka ?)",
                  sound1: "assets/sounds/phrases/are_you_coming.wav"),
              NumberphasesContainers(
                  text1: " Yes,i'm coming\n はい、行きます\n (Hai, ikimasu)",
                  sound1: "assets/sounds/phrases/yes_im_coming.wav"),
              NumberphasesContainers(
                  text1:
                      " Programming is easy\n プログラミグは簡単です\n (Programngu waktndesu)",
                  sound1: "assets/sounds/phrases/programming_is_easy.wav"),
              NumberphasesContainers(
                  text1:
                      " I love programming\n 私はログラミが大好きで\n (Wathi wapringu gaddesu)",
                  sound1: "assets/sounds/phrases/i_love_programming.wav"),
            ],
          ),
        ),
      ),
    );
  }
}
