import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yourmeal/providers/theme_provider.dart';
import 'package:yourmeal/providers/language_provider.dart';
import 'package:yourmeal/providers/notification_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Theme'),
            trailing: Switch(
              value: Provider.of<ThemeProvider>(context).isDarkMode,
              onChanged: (value) {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Language'),
            trailing: DropdownButton<String>(
              value: Provider.of<LanguageProvider>(context).selectedLanguage,
              onChanged: (String? newValue) {
                Provider.of<LanguageProvider>(context, listen: false)
                    .changeLanguage(newValue!);
              },
              items: ['English', 'Spanish', 'French']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Notifications'),
            trailing: Switch(
              value: Provider.of<NotificationProvider>(context)
                  .areNotificationsEnabled,
              onChanged: (value) {
                Provider.of<NotificationProvider>(context, listen: false)
                    .toggleNotifications(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
