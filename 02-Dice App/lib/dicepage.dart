import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import 'functions.dart';

class diceapp extends StatefulWidget {
  diceapp({Key? key}) : super(key: key);

  @override
  State<diceapp> createState() => _diceappState();
}

class _diceappState extends State<diceapp> {
  final ConfettiController _confettiController = ConfettiController();
  int numberdice1 = Random().nextInt(6) + 1;
  int numberdice2 = Random().nextInt(6) + 1;
  int? x;
  AudioPlayer audioPlayer = AudioPlayer();
  Color selectedDiceColor = Colors.green; // Default color

  void change1() {
    setState(() {
      numberdice1 = Random().nextInt(6) + 1;
      numberdice2 = Random().nextInt(6) + 1;
      if (numberdice1 == numberdice2) {
        _confettiController.play();
        playWinSound(); // Play the sound
      } else {
        _confettiController.stop();
      }
    });
  }

  String? name = "";
  void _showNameInputDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // Initialize an empty string for the name input

        return AlertDialog(
          title: Text("Enter Your Name"),
          content: TextField(
            onChanged: (value) {
              name = value; // Update the 'name' variable as the user types
            },
          ),
          actions: <Widget>[
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text("Save"),
              onPressed: () {
                // Handle the user's name input here (you can store it, display it, etc.)
                print("User's Name: $name");
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _openColorPickerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Dice Color'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: selectedDiceColor,
              onColorChanged: (Color color) {
                setState(() {
                  selectedDiceColor = color;
                });
              },
              // ignore: deprecated_member_use
              showLabel: true,
              pickerAreaHeightPercent: 0.9,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenWidth * 0.18,
        backgroundColor: Color.fromARGB(169, 0, 132, 20),
        title: Text(
          " Dice App",
          style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: screenWidth * 0.055),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                top: screenWidth * 0.01, right: screenWidth * 0.04),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.color_lens),
                  onPressed: _openColorPickerDialog,
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: _showNameInputDialog,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenWidth * 0.24),
              child: Text(
                (numberdice1 == numberdice2)
                    ? "You are lucky $name🥳"
                    : "Shake To Throw",
                style: TextStyle(
                  fontSize: screenWidth * 0.08,
                  color: (numberdice1 == numberdice2)
                      ? Colors.green
                      : Color.fromARGB(255, 121, 118, 118),
                ),
              ),
            ),
            SizedBox(
              height: screenWidth * 0.2,
            ),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.15,
                ),
                Image.asset(
                  'assets/$numberdice1.png',
                  height: screenWidth * 0.3,
                  width: screenWidth * 0.3,
                  fit: BoxFit.fitWidth,
                  color: selectedDiceColor,
                ),
                SizedBox(
                  width: screenWidth * 0.09,
                ),
                Image.asset(
                  'assets/$numberdice2.png',
                  height: screenWidth * 0.3,
                  width: screenWidth * 0.3,
                  fit: BoxFit.contain,
                  color: selectedDiceColor,
                ),
              ],
            ),
            SizedBox(
              height: screenWidth * 0.25,
            ),
            Container(
              width: screenWidth * 0.45,
              height: screenWidth * 0.14,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color?>(
                    (numberdice1 == numberdice2)
                        ? Color.fromARGB(255, 0, 156, 6)
                        : Color.fromARGB(255, 216, 216, 216),
                  ),
                ),
                onPressed: change1,
                child: Text(
                  "ROLL DICE",
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    color: (numberdice1 == numberdice2)
                        ? const Color.fromARGB(255, 255, 255, 255)
                        : Colors.black,
                  ),
                ),
              ),
            ),
            ConfettiWidget(
              confettiController: _confettiController,
              numberOfParticles: 30,
              maxBlastForce: 40,
              minBlastForce: 25,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: true,
              gravity: 0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _confettiController.dispose();
    audioPlayer.dispose(); // Dispose of the audio player.
    super.dispose();
  }
}
