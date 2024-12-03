// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'ProfilePage.dart'; // استيراد صفحة الملف الشخصي

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.deepPurple, // لون الشريط العلوي
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Manage your preferences',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple.shade800,
                ),
              ),
              SizedBox(height: 20),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.language, color: Colors.deepPurple),
                  title: Text('Language'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Select Language'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(title: Text('English'), onTap: () {}),
                            ListTile(title: Text('Arabic'), onTap: () {}),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.brightness_6, color: Colors.deepPurple),
                  title: Text('Theme'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Select Theme'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(title: Text('Light'), onTap: () {}),
                            ListTile(title: Text('Dark'), onTap: () {}),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.account_circle, color: Colors.deepPurple),
                  title: Text('Account'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.notifications, color: Colors.deepPurple),
                  title: Text('Notifications'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
                  onTap: () {
                    // إعدادات الإشعارات
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
