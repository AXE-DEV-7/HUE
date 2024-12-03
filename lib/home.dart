// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'login.dart'; // شاشة تسجيل الدخول
import 'universities.dart'; // شاشة الجامعات
import 'students.dart'; // شاشة الطلاب
import 'settings.dart'; // شاشة الإعدادات
import 'submissions.dart'; // شاشة التقديمات الجديدة

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0; // الصفحة الحالية

  // قائمة الصفحات التي يمكن التنقل إليها
  final List<Widget> _pages = [
    HomePage(), // الصفحة الرئيسية
    UniversitiesPage(), // صفحة الجامعات
    StudentsPage(), // صفحة الطلاب
    SettingsPage(), // صفحة الإعدادات
    SubmissionsPage(), // صفحة التقديمات
  ];

  // عند اختيار أحد العناصر في الشريط السفلي
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  // بناء الـ AppBar
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.deepPurple,
      elevation: 10,
      title: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: Text(
              'H',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
          SizedBox(width: 10),
          Text(
            'HUE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.logout, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
        ),
      ],
    );
  }

  // بناء الـ Body
  Widget _buildBody() {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 300), // تأثير التنقل
      child: _pages[_selectedIndex],
    );
  }

  // بناء الـ BottomNavigationBar
  Widget _buildBottomNavigationBar() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey,
          items: _buildBottomNavigationItems(),
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  // بناء عناصر BottomNavigationBar
  List<BottomNavigationBarItem> _buildBottomNavigationItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.school),
        label: 'Universities',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.people),
        label: 'Students',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.assignment),
        label: 'Submissions',
      ),
    ];
  }
}

// الصفحة الرئيسية
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'), // صورة خلفية
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore Colleges:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3.0,
 
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Tapped on College ${index + 1}')),
                        );
                      },
                      child: Card(
                        color: Colors.deepPurple[400],
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'College ${index + 1}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
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
      ],
    );
  }
}
