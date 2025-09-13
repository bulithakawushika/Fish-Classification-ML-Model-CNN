import 'dart:io';

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 250, 255),
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 128, 216, 255),
        automaticallyImplyLeading: false, // Remove the back button
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mobile application to identify fish species',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'A mobile application in development to identify fish species from an image. This is only the start of the project and this Flutter project is the frontend of the whole application.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'Introduction to the project',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'There are a lot of unique fish species around the world. For people who encounter a new fish species, most of the time they don’t have any knowledge about it. Sometimes, even with expertise, it’s hard to tell apart some species because they have quite similar features. Some species have unique body and wing shapes, color patterns, and features. We use them to identify species. With the evolution of computer vision and deep learning techniques, we can now use computers to identify unique features with ease. CNN (Convolutional Neural Network) can be used as a great technique when it comes to identifying patterns in an image. CNN has shown great accuracy in predictions when it comes to feature extractions, which can be a great tool for identifying fish species.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'Project Aim',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'The aim of the project is to build a mobile application that can accurately predict the fish species using an image as the user input. With this application, users will be able to know which species they have encountered without any effort.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'Project Objectives',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'First, we need to develop and train our CNN model. Then, we can proceed to deploy our model. Finally, we are going to develop a mobile interface to interact with this model with ease.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 2, 2, 2),
          unselectedItemColor: const Color.fromARGB(255, 124, 123, 123),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_stories_outlined),
              label: 'Data Book',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.info_outline),
                label: 'About',
                backgroundColor: Color.fromARGB(255, 128, 216, 255)),
            BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app_outlined),
              label: 'Exit',
            ),
          ],
          currentIndex: 2,
          onTap: (index) {
            if (index == 0) {
              Navigator.pushReplacementNamed(context, '/home');
            } else if (index == 1) {
              Navigator.pushNamed(context, '/settings');
            } else if (index == 3) {
              exit(0); // Close the app
            }
          },
        ),
      ),
    );
  }
}
