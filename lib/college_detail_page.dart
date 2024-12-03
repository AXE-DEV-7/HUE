// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CollegeDetailPage extends StatelessWidget {
  final int collegeId;

  // استلام الـ collegeId من الصفحة السابقة لعرض التفاصيل
  const CollegeDetailPage({super.key, required this.collegeId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('College ${collegeId + 1} Details'), // عنوان صفحة التفاصيل
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // عنوان المعلومات العامة
            Text(
              'College ${collegeId + 1} Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            
            // مجموعة من المربعات 
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, // عدد الاعمده الافقيه
                  crossAxisSpacing: 10, // المسافة بين الاعمده
                  mainAxisSpacing: 10, // المسافة بين الصفوف
                  childAspectRatio: 3, // نسبة العرض والارتفاع للمربع
                ),
                itemCount: 10, // عدد المربعات   
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 15, // تأثير الظل
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // زوايا مدورة
                    ),
                    child: InkWell(
                      onTap: () {
                        //  تاثير  النقر على المربع
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Tapped on Box #${index + 1}')),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.info, 
                              color: Colors.deepPurple, 
                              size: 40, // حجم الأيقونة
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Box ${index + 1}', // عنوان المربع
                              style: TextStyle(
                                fontSize: 18, 
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
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
