import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Privacy Settings',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PrivacySettingsScreen(),
    );
  }
}

class PrivacySettingsScreen extends StatefulWidget {
  @override
  _PrivacySettingsScreenState createState() => _PrivacySettingsScreenState();
}

class _PrivacySettingsScreenState extends State<PrivacySettingsScreen> {
  bool _controlProfileVisibility = true;
  bool _deleteChatHistory = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Accessibility settings'),
        leading: IconButton(
          icon:const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: ListView(
        padding:const EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            title: const Text('Control profile visibility'),
            subtitle:const Text('Control what information is visible to others. When on people can only see your name'),
            value: _controlProfileVisibility,
            onChanged: (bool value) {
              setState(() {
                _controlProfileVisibility = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Delete chat history'),
            subtitle:const  Text('Do you want to delete chat history after unmatching'),
            value: _deleteChatHistory,
            onChanged: (bool value) {
              setState(() {
                _deleteChatHistory = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
