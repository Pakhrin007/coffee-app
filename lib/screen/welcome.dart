import 'package:coffee/screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("images/bg.png"),
              fit: BoxFit.cover,
              opacity: 0.6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coffee Shop",
              style: GoogleFonts.pacifico(fontSize: 50, color: Colors.white),
            ),
            const SizedBox(
              height: 150,
            ),
            const Text(
              "feeling Low ? Take a sip of coffee",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Homescreen(),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75),
                    bottomRight: Radius.circular(75),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Get started",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
