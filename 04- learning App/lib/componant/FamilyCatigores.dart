// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberFamilyContainers extends StatefulWidget {
  final String text2;
  final String image2;
  final String sound2;

  const NumberFamilyContainers(
      {super.key,
      required this.image2,
      required this.text2,
      required this.sound2});

  @override
  // ignore: library_private_types_in_public_api
  _NumberFamilyContainersState createState() => _NumberFamilyContainersState();
}

class _NumberFamilyContainersState extends State<NumberFamilyContainers> {
  bool isPlaying = false;
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  Future<void> _playAudio() async {
    final audioData = await rootBundle.load(widget.sound2);
    final Uint8List audioBytes = audioData.buffer.asUint8List();
    await player.playBytes(audioBytes);

    setState(() {
      isPlaying = true;
    });

    player.onPlayerCompletion.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          color: const Color.fromARGB(255, 255, 251, 219),
          child: Image.asset(
            widget.image2,
            height: screenWidth * 0.331,
            width: screenWidth * 0.337,
          ),
        ),
        Container(
          height: screenWidth * 0.331,
          width: screenWidth * 0.663,
          color: const Color.fromARGB(255, 3, 154, 209),
          child: Row(
            children: [
              Text(
                widget.text2,
                style: TextStyle(fontSize: screenWidth * 0.07),
              ),
              const Spacer(flex: 1),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.03),
                child: IconButton(
                  onPressed: () {
                    if (!isPlaying) {
                      _playAudio();
                    } else {
                      player.pause();
                      setState(() {
                        isPlaying = false;
                      });
                    }
                  },
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                    size: screenWidth * 0.12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
