import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      backgroundColor:
          Color.fromRGBO(38, 38, 38, 1), // Set background color to #424242
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'General Settings',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text(
                'Dark Mode',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Switch(
                value:
                    true, // You can set the actual value based on user preferences
                onChanged: (bool value) {
                  // Implement your logic when the switch is toggled
                },
                activeColor: Colors.blue, // Customize the active color
              ),
            ),
            ListTile(
              title: Text(
                'Notifications',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Switch(
                value:
                    false, // You can set the actual value based on user preferences
                onChanged: (bool value) {
                  // Implement your logic when the switch is toggled
                },
                activeColor: Colors.blue, // Customize the active color
              ),
            ),
            // Add more settings as needed
          ],
        ),
      ),
    );
  }
}
