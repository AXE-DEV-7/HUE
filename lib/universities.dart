// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'college_detail_page.dart'; // استيراد صفحة التفاصيل

class UniversitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Colleges',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          // شبكة لعرض الكليات
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // عدد الأعمدة في الشبكة
                crossAxisSpacing: 10, // المسافة بين الأعمدة
                mainAxisSpacing: 10, // المسافة بين الصفوف
                childAspectRatio: 3.0,
              ),
              itemCount: 8, // عدد الكليات
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // الانتقال إلى صفحة تفاصيل الكلية عند الضغط على المربع
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CollegeDetailPage(collegeId: index),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.deepPurple[400],
                    elevation: 20, // تأثير الظل
                    child: Center(
                      child: Text(
                        'College ${index + 1}', // عرض اسم الكلية
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
