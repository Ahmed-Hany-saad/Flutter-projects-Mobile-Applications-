// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberContainers extends StatefulWidget {
  final String text1;
  final String image1;
  final String sound1;

  const NumberContainers(
      {super.key,
      required this.image1,
      required this.text1,
      required this.sound1});

  @override
  State<NumberContainers> createState() => _NumberContainersState();
}

class _NumberContainersState extends State<NumberContainers> {
  bool isPlaying = false;
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  Future<void> _playAudio() async {
    final audioData = await rootBundle.load(widget.sound1);
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
          color: const Color.fromARGB(255, 228, 219, 140),
          child: Image.asset(
            widget.image1,
            height: screenWidth * 0.331,
            width: screenWidth * 0.337,
          ),
        ),
        Container(
          height: screenWidth * 0.331,
          width: screenWidth * 0.663,
          color: const Color.fromARGB(255, 171, 173, 0),
          child: Row(
            children: [
              Text(
                widget.text1,
                style: TextStyle(fontSize: screenWidth * 0.09),
              ),
              const Spacer(flex: 9),
              IconButton(
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
              const Spacer(flex: 2),
            ],
          ),
        ),
      ],
    );
  }
}
