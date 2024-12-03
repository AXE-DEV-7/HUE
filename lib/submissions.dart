// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api, use_build_context_synchronously

import 'package:flutter/material.dart';

class SubmissionsPage extends StatefulWidget {
  @override
  _SubmissionsPageState createState() => _SubmissionsPageState();
}

class _SubmissionsPageState extends State<SubmissionsPage> {
  final _formKey = GlobalKey<FormState>(); // مفتاح النموذج
  final TextEditingController _applicationController = TextEditingController(); //نص التقديم
  bool _isSubmitting = false; // حالة التقديم

  // للتقديم
  void _submitApplication() {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        _isSubmitting = true; // تغيير حالة التقديم إلى قيد الإرسال
      });

      // محاكاة التقديم
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          _isSubmitting = false; // إعادة حالة التقديم بعد الإرسال
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Application Submitted Successfully!')),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Submissions'), // عنوان صفحة التقديمات
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // نموذج التقديم
            Text(
              'Submit Your Application: ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  // حقل إدخال عنوان التقديم
                  TextFormField(
                    controller: _applicationController,
                    decoration: InputDecoration(
                      labelText: 'Application Title',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a title for the application';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  // زر التقديم
                  ElevatedButton(
                    onPressed: _isSubmitting ? null : _submitApplication,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple, //  اللون
                      foregroundColor: Colors.white, //  لون النص
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    ),
                    child: _isSubmitting
                        ? CircularProgressIndicator(color: Colors.white) // مؤشر تحميل
                        : Text('Submit Application'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // عرض التقديمات السابقة
            Expanded(
              child: ListView.builder(
                itemCount: 8, // عدد التقديمات السابقة (على سبيل المثال)
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // إضافة فعل عند النقر على التقديم
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Tapped on Application #${index + 1}')),
                      );
                    },
                    child: Card(
                      elevation: 5, // تأثير الظل
                      margin: EdgeInsets.symmetric(vertical: 8), // المسافة بين البطاقات
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15), // زوايا مدورة
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(12), // حواف 
                        leading: Icon(
                          Icons.assignment,
                          color: Colors.deepPurple, // لون الأيقونة
                          size: 40, // حجم الأيقونة
                        ),
                        title: Text(
                          'Application #${index + 1}', // عنوان التقديم
                          style: TextStyle(
                            fontSize: 18, 
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Status: Pending', // حالة التقديم
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        trailing: Icon(Icons.arrow_forward, color: Colors.deepPurple),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
