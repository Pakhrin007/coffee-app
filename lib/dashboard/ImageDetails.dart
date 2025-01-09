import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ImageDetails extends StatefulWidget {
  final String imagePath;
  final String text;
  final String audioPath;

  const ImageDetails({
    required this.imagePath,
    required this.text,
    required this.audioPath,
    super.key,
  });

  @override
  State<ImageDetails> createState() => _ImageDetailsState();
}

class _ImageDetailsState extends State<ImageDetails> {
  late AudioPlayer _audioPlayer;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _toggleAudio() async {
    if (isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play(AssetSource('audio/audio.mp3'));
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.imagePath,
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            Text(
              widget.text,
              style: TextStyle(fontSize: 24, fontFamily: 'poppins-medium'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleAudio,
              child: Text(isPlaying ? "Pause Audio" : "Play Audio"),
            ),
          ],
        ),
      ),
    );
  }
}
