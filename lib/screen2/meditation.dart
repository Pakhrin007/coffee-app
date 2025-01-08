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
    );
  }
}
