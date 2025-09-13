import 'package:flutter/material.dart';

class OpeningPage extends StatefulWidget {
  @override
  _OpeningPageState createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  bool _showIcon = false;

  @override
  void initState() {
    super.initState();
    _delayedShowIcon();
    _navigateToHomePage();
  }

  void _delayedShowIcon() {
    Future.delayed(const Duration(microseconds: 0), () {
      if (mounted) {
        setState(() {
          _showIcon = true;
        });
      }
    });
  }

  void _navigateToHomePage() {
    Future.delayed(Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 236, 186),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    opacity: _showIcon ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 900),
                    child: Image.asset(
                      'assets/icon1.png', // app icon
                      width: 200, // Adjust the size of the icon as needed
                      height: 200,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: LinearProgressIndicator(), // Loading bar at the bottom
          ),
        ],
      ),
    );
  }
}
