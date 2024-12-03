// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _emailController = TextEditingController();

  void _sendResetLink() {
    String email = _emailController.text.trim();

    if (email.isEmpty) {
      // التاكد من البريد الإلكتروني
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter your email address")),
      );
      return;
    }

    //  إرسال رابط لاعاده ضبط كلمة المرور
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("A link to reset the password has been sent to me $email")),
    );

    // العودة إلى صفحة تسجيل الدخول
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"), // عنوان الصفحة
        backgroundColor: Colors.deepPurple,   // لون الخلفية
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Forgot your password?\nEnter your email below to receive a reset link.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _sendResetLink,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[300],
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              ),
              child: const Text('Send Reset Link'),
            ),
          ],
        ),
      ),
    );
  }
}
