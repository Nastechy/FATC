import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accessibility Settings',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AccessibilitySettingsScreen(),
    );
  }
}

class AccessibilitySettingsScreen extends StatefulWidget {
  @override
  _AccessibilitySettingsScreenState createState() => _AccessibilitySettingsScreenState();
}

class _AccessibilitySettingsScreenState extends State<AccessibilitySettingsScreen> {
  bool isTextToSpeechEnabled = false;
  String fontSize = 'Normal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accessibility settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Font Size',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
           const  SizedBox(height: 10.0),
            DropdownButton<String>(
              value: fontSize,
              items: <String>['Small', 'Normal', 'Large'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  fontSize = newValue!;
                });
              },
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Text to speech output',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Switch(
              value: isTextToSpeechEnabled,
              onChanged: (value) {
                setState(() {
                  isTextToSpeechEnabled = value;
                });
              },
            ),
           const  SizedBox(height: 10.0),
           const  Text(
              'You can enable a voice over support which automatic readers you screen form the phone setting',
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
