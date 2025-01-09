import 'package:coffee/dashboard/ImageDetails.dart';
import 'package:flutter/material.dart';

class Meditation extends StatefulWidget {
  const Meditation({super.key});

  @override
  State<Meditation> createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/splash/logo.png'),
        ),
        leadingWidth: 86,
        title: Text(
          "Meditation",
          style: TextStyle(fontSize: 20, fontFamily: 'poppins-medium'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Guided Meditations",
                  style: TextStyle(fontSize: 20, fontFamily: 'poppins-medium'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildImageCard(context, 'assets/meditate/medi.png',
                          'Meditation 1', 'assets/audio/audio.mp3'),
                      buildImageCard(context, 'assets/meditate/medi2.png',
                          'Meditation 2', 'assets/audio/audio.mp3'),
                      buildImageCard(context, 'assets/meditate/medi3.png',
                          'Meditation 3', 'assets/audio/audio.mp3'),
                      buildImageCard(context, 'assets/meditate/medi.png',
                          'Meditation 4', 'assets/audio/audio.mp3'),
                      buildImageCard(context, 'assets/meditate/medi.png',
                          'Meditation 5', 'assets/audio/audio.mp3'),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Natural Meditations",
                  style: TextStyle(fontSize: 20, fontFamily: 'poppins-medium'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildImageCard(context, 'assets/meditate/medi.png',
                          'Meditation 1', ''),
                      buildImageCard(context, 'assets/meditate/medi2.png',
                          'Meditation 2', ''),
                      buildImageCard(context, 'assets/meditate/medi3.png',
                          'Meditation 3', ''),
                      buildImageCard(context, 'assets/meditate/medi.png',
                          'Meditation 4', ''),
                      buildImageCard(context, 'assets/meditate/medi.png',
                          'Meditation 5', ''),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Sounded Meditations",
                  style: TextStyle(fontSize: 20, fontFamily: 'poppins-medium'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildImageCard(context, 'assets/meditate/medi.png',
                          'Meditation 1', ''),
                      buildImageCard(context, 'assets/meditate/medi2.png',
                          'Meditation 2', ''),
                      buildImageCard(context, 'assets/meditate/medi3.png',
                          'Meditation 3', ''),
                      buildImageCard(context, 'assets/meditate/medi.png',
                          'Meditation 4', ''),
                      buildImageCard(context, 'assets/meditate/medi.png',
                          'Meditation 5', ''),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to create an image card with navigation
  Widget buildImageCard(
      BuildContext context, String imagePath, String text, String audioPath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ImageDetails(
                  imagePath: imagePath, text: text, audioPath: audioPath),
            ),
          );
        },
        child: Image.asset(
          imagePath,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}

// New page to display the image and text

