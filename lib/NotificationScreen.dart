import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification Screen',
      home: NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white, // Set the background color of the AppBar to white
        title: const Text(
          'Notification',
          style: TextStyle(color: Colors.black), // Set the title color to black
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black), // Set the icon color to black
          onPressed: () {
            // Add back button functionality here
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          NotificationItem(
            icon: Icons.bookmark,
            title: 'Booking Successful',
            dateTime: 'Mar. 29, 2024 | 20:24pm',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed iaculis dui.',
          ),
          NotificationItem(
            icon: Icons.bookmark,
            title: 'Booking Successful',
            dateTime: 'Mar. 29, 2024 | 20:24pm',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed iaculis dui.',
          ),
          NotificationItem(
            icon: Icons.event,
            title: 'New Event Available',
            dateTime: 'Mar. 29, 2024 | 20:24pm',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed iaculis dui.',
          ),
          NotificationItem(
            icon: Icons.person,
            title: 'Account Setup Successful',
            dateTime: 'Mar. 29, 2024 | 20:24pm',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed iaculis dui.',
          ),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String dateTime;
  final String description;

  NotificationItem({
    required this.icon,
    required this.title,
    required this.dateTime,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink,
              child: Icon(icon, color: Colors.white),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    dateTime,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(
          color: Colors.grey,
          height: 22.0,
          thickness: 0.3,
        ),
      ],
    );
  }
}
