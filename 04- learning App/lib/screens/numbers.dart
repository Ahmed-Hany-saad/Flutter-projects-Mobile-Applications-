import 'package:flutter/material.dart';
import '../componant/NumbersCatigores.dart';

// ignore: camel_case_types
class numbers extends StatelessWidget {
  const numbers({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenWidth * 0.21,
          backgroundColor: const Color.fromARGB(255, 227, 197, 88),
          title: Text(
            "Numbers (suu ji 数字)",
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
              NumberContainers(
                sound1: "assets/sounds/numbers/number_one_sound.mp3",
                text1: " ichi 一\n one",
                image1: "assets/images/numbers/number_one.png",
              ),
              NumberContainers(
                sound1: "assets/sounds/numbers/number_two_sound.mp3",
                text1: " ni ニ\n two",
                image1: "assets/images/numbers/number_two.png",
              ),
              NumberContainers(
                sound1: "assets/sounds/numbers/number_three_sound.mp3",
                text1: " san 三\n three",
                image1: "assets/images/numbers/number_three.png",
              ),
              NumberContainers(
                sound1: "assets/sounds/numbers/number_four_sound.mp3",
                text1: " yon 四\n four",
                image1: "assets/images/numbers/number_four.png",
              ),
              NumberContainers(
                sound1: "assets/sounds/numbers/number_five_sound.mp3",
                text1: " go 五\n five",
                image1: "assets/images/numbers/number_five.png",
              ),
              NumberContainers(
                sound1: "assets/sounds/numbers/number_six_sound.mp3",
                text1: " roku 六\n six",
                image1: "assets/images/numbers/number_six.png",
              ),
              NumberContainers(
                sound1: "assets/sounds/numbers/number_seven_sound.mp3",
                text1: " nana 七ニ\n seven",
                image1: "assets/images/numbers/number_seven.png",
              ),
              NumberContainers(
                sound1: "assets/sounds/numbers/number_eight_sound.mp3",
                text1: " hachi 八\n eight",
                image1: "assets/images/numbers/number_eight.png",
              ),
              NumberContainers(
                sound1: "assets/sounds/numbers/number_nine_sound.mp3",
                text1: " kyuu 九\n nine",
                image1: "assets/images/numbers/number_nine.png",
              ),
              NumberContainers(
                sound1: "assets/sounds/numbers/number_ten_sound.mp3",
                text1: " juu 百\n ten",
                image1: "assets/images/numbers/number_ten.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
