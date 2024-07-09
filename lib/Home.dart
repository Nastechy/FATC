import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Management',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              print('Notifications button pressed');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(),
              SizedBox(height: 16.0),
              Text(
                'Explore Feed of Exciting Events',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text('Swipe right to show interest, swipe left to pass'),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Explore button pressed');
                    },
                    child: Text('Explore'),
                  ),
                  SizedBox(width: 16.0),
                  OutlinedButton(
                    onPressed: () {
                      print('Interested button pressed');
                    },
                    child: Text('Interested'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              EventCard(
                title: 'Welcome Party',
                date: '02 Jun, 2024',
                time: '09:00 pm',
                location: 'Manchester, Kentucky',
                isSellingFast: true,
              ),
              EventCard(
                title: 'Welcome Party',
                date: '02 Jun, 2024',
                time: '09:00 pm',
                location: 'Manchester, Kentucky',
                isSellingFast: false,
                isCompleteProfileRequired: true,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Matches',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.red,
          child: Icon(Icons.person, color: Colors.white),
        ),
        SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Brooklyn Simmons',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Manchester, Kentucky',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final String location;
  final bool isSellingFast;
  final bool isCompleteProfileRequired;

  EventCard({
    required this.title,
    required this.date,
    required this.time,
    required this.location,
    this.isSellingFast = false,
    this.isCompleteProfileRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'images/bg.png', // Replace with your logo asset
                height: 150,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              if (isSellingFast)
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    color: Colors.yellow,
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Text(
                      'Selling Fast',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text('$date · $time'),
                SizedBox(height: 8.0),
                Text(location),
                SizedBox(height: 8.0),
                if (isCompleteProfileRequired)
                  Text(
                    'Finish setting up your account to fully optimize the app usage.',
                    style: TextStyle(color: Colors.red),
                  ),
                SizedBox(height: 16.0),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      print('View button pressed');
                    },
                    child: Text('View'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
