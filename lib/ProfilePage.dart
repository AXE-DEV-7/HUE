// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile_picture.png'), // ضع صورة شخصية هنا
              ),
              SizedBox(height: 20),
              Text(
                'AXE', // اسم المستخدم
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple.shade800,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'AXE@horus.edu.eg', // البريد الإلكتروني
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 10),
              Text(
                '01095282897', // رقم الهاتف
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Egypt', // الموقع
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 30),
              Divider(thickness: 1, color: Colors.grey[300]),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.edit, color: Colors.deepPurple),
                title: Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  // تنفيذ تعديل الملف الشخصي
                },
              ),
              ListTile(
                leading: Icon(Icons.lock, color: Colors.deepPurple),
                title: Text(
                  'Change Password',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  // تنفيذ تغيير كلمة المرور
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.red),
                title: Text(
                  'Logout',
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
                onTap: () {
                  // تنفيذ تسجيل الخروج
                },
              ),
              SizedBox(height: 20),
              Divider(thickness: 1, color: Colors.grey[300]),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // تنفيذ إجراء إضافي
                },
                icon: Icon(Icons.contact_support),
                label: Text('Contact Support'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
