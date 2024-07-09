import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MatchScreen(),
    );
  }
}

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Match'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You matched with',
              style: TextStyle(fontSize: 24),
            ),
          const  SizedBox(height: 8),
          const Text(
              'Username',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage('URL_TO_FIRST_IMAGE'),
                ),
                Positioned(
                  left: 80,
                  top: 80,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage('URL_TO_SECOND_IMAGE'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Text(
              'Get the conversation started by saying hello!',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Handle message button press
              },
              child: Text('Message'),
              style: ElevatedButton.styleFrom(
                // primary: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                // Handle back to explore button press
              },
              child: const Text('Back to Explore'),
              style: OutlinedButton.styleFrom(
                padding:const  EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
