import 'package:flutter/material.dart';

import '../componant/FamilyCatigores.dart';

// ignore: camel_case_types
class family_members extends StatefulWidget {
  const family_members({super.key});

  @override
  State<family_members> createState() => _family_membersState();
}

// ignore: camel_case_types
class _family_membersState extends State<family_members> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenWidth * 0.26,
          backgroundColor: const Color.fromARGB(255, 210, 210, 56),
          title: Text(
            "Family Members\n(家族のメンバー)",
            style: TextStyle(fontSize: screenWidth * 0.08, color: Colors.black),
          ),
          leading: GestureDetector(
            child: Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.01,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_double_arrow_left_sharp,
                  size: screenWidth * 0.14,
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
              NumberFamilyContainers(
                sound2: "assets/sounds/family_members/father.wav",
                text2: " Chichioya\n (父親)\n Father",
                image2: "assets/images/family_members/family_father.png",
              ),
              NumberFamilyContainers(
                sound2: "assets/sounds/family_members/mother.wav",
                text2: " Hahaoya\n (母親)\n Mother",
                image2: "assets/images/family_members/family_mother.png",
              ),
              NumberFamilyContainers(
                sound2: "assets/sounds/family_members/grand father.wav",
                text2: " Ojīsan\n (おじいさん)\n Grandfather",
                image2: "assets/images/family_members/family_grandfather.png",
              ),
              NumberFamilyContainers(
                sound2: "assets/sounds/family_members/grand mother.wav",
                text2: " O bāchan\n(おばあちゃん)\n Grandmother",
                image2: "assets/images/family_members/family_grandmother.png",
              ),
              NumberFamilyContainers(
                sound2: "assets/sounds/family_members/older bother.wav",
                text2: " Ani\n(兄)\n older brother",
                image2: "assets/images/family_members/family_older_brother.png",
              ),
              NumberFamilyContainers(
                sound2: "assets/sounds/family_members/older sister.wav",
                text2: " Ane\n(姉)\n older sister",
                image2: "assets/images/family_members/family_older_sister.png",
              ),
              NumberFamilyContainers(
                sound2: "assets/sounds/family_members/son.wav",
                text2: " Musuko\n(息子)\n son",
                image2: "assets/images/family_members/family_son.png",
              ),
              NumberFamilyContainers(
                sound2: "assets/sounds/family_members/younger brohter.wav",
                text2: " Otōto\n (弟)\n younger brother",
                image2:
                    "assets/images/family_members/family_younger_brother.png",
              ),
              NumberFamilyContainers(
                sound2: "assets/sounds/family_members/younger sister.wav",
                text2: " Imōto\n(妹)\n younger sister",
                image2:
                    "assets/images/family_members/family_younger_sister.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
