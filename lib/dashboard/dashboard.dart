import 'package:coffee/screen2/explore.dart';
import 'package:coffee/screen2/home.dart';
import 'package:coffee/screen2/meditation.dart';
import 'package:coffee/screen2/pomodoro.dart';
import 'package:coffee/screen2/profile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  // Define the list of pages
  final List<Widget> _pages = [
    Home(), // Your Home class
    Explore(), // Your Explore class
    Profile(),
    Meditation(),
    Pomodoro() // Your Pomodoro class
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Set the background color

      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected tab
          });
        },
        type: BottomNavigationBarType.fixed, // Add this line
        selectedItemColor: Colors.blue, // Add this line
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Todo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.power),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement),
            label: 'Meditation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: 'Clock',
          ),
        ],
      ),
    );
  }
}
