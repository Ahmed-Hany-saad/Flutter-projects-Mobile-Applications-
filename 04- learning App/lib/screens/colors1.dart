import 'package:flutter/material.dart';
import '../componant/ColorCatigores.dart';

// ignore: camel_case_types
class colors1 extends StatelessWidget {
  const colors1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenWidth * 0.21,
          backgroundColor: const Color.fromARGB(255, 221, 200, 17),
          title: Text(
            "Colors (Iro 色)",
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
              NumberColorsContainers(
                sound1: "assets/sounds/colors/black.wav",
                text1: " Kuro 黒\n black",
                image1: "assets/images/colors/color_black.png",
              ),
              NumberColorsContainers(
                sound1: "assets/sounds/colors/brown.wav",
                text1: " Chairo 茶色\n brown",
                image1: "assets/images/colors/color_brown.png",
              ),
              NumberColorsContainers(
                sound1: "assets/sounds/colors/gray.wav",
                text1: " Gurē グレー\n gray",
                image1: "assets/images/colors/color_gray.png",
              ),
              NumberColorsContainers(
                sound1: "assets/sounds/colors/green.wav",
                text1: " Midori 緑\n green",
                image1: "assets/images/colors/color_green.png",
              ),
              NumberColorsContainers(
                sound1: "assets/sounds/colors/red.wav",
                text1: " Aka 赤\n red",
                image1: "assets/images/colors/color_red.png",
              ),
              NumberColorsContainers(
                sound1: "assets/sounds/colors/white.wav",
                text1: " Shiro 白\n white",
                image1: "assets/images/colors/color_white.png",
              ),
              NumberColorsContainers(
                sound1: "assets/sounds/colors/yellow.wav",
                text1: " Kiiro 黄色\n yellow",
                image1: "assets/images/colors/yellow.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
