  import 'package:audioplayers/audioplayers.dart';

void playWinSound() async {
    final player = AudioPlayer();
    await player.play(
      AssetSource("Untitled video - Made with Clipchamp (28).mp3"),
    );
  }