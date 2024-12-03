import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'University App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StudentsPage(),
    );
  }
}

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome, Students!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                childAspectRatio: 2.0,
                children: [
                  _buildFeatureCard(
                    context,
                    title: 'View Courses',
                    icon: Icons.book,
                    color: Colors.blueAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CoursesPage()),
                    ),
                  ),
                  _buildFeatureCard(
                    context,
                    title: 'Class Schedule',
                    icon: Icons.calendar_today,
                    color: Colors.orangeAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SchedulePage()),
                    ),
                  ),
                  _buildFeatureCard(
                    context,
                    title: 'View Grades',
                    icon: Icons.grade,
                    color: Colors.greenAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GradesPage()),
                    ),
                  ),
                  _buildFeatureCard(
                    context,
                    title: 'Attendance Warnings',
                    icon: Icons.warning,
                    color: Colors.redAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WarningsPage()),
                    ),
                  ),
                  _buildFeatureCard(
                    context,
                    title: 'Class Registration',
                    icon: Icons.add_circle_outline,
                    color: Colors.purpleAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegistrationPage()),
                    ),
                  ),
                  _buildFeatureCard(
                    context,
                    title: 'Student Forums',
                    icon: Icons.forum,
                    color: Colors.tealAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ForumsPage()),
                    ),
                  ),
                  _buildFeatureCard(
                    context,
                    title: 'Academic Support',
                    icon: Icons.support,
                    color: Colors.blueGrey,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SupportPage()),
                    ),
                  ),
                  _buildFeatureCard(
                    context,
                    title: 'Fee Payment',
                    icon: Icons.payment,
                    color: Colors.amberAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PaymentPage()),
                    ),
                  ),
                  _buildFeatureCard(
                    context,
                    title: 'Digital Library',
                    icon: Icons.library_books,
                    color: Colors.green,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LibraryPage()),
                    ),
                  ),
                  _buildFeatureCard(
                    context,
                    title: 'Job & Training Opportunities',
                    icon: Icons.work,
                    color: Colors.indigoAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const JobsPage()),
                    ),
                  ),
                  _buildFeatureCard(
                    context,
                    title: 'Transportation',
                    icon: Icons.directions_bus,
                    color: Colors.cyanAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TransportPage()),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(BuildContext context,
      {required String title, required IconData icon, required Color color, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: color),
              const SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// صفحات المزايا المختلفة

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('View Courses')),
      body: const Center(
        child: Text('Courses Page Content', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Class Schedule')),
      body: const Center(
        child: Text('Class Schedule Page Content', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class GradesPage extends StatelessWidget {
  const GradesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('View Grades')),
      body: const Center(
        child: Text('Grades Page Content', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class WarningsPage extends StatelessWidget {
  const WarningsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance Warnings')),
      body: const Center(
        child: Text('Attendance Warnings Page Content', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Class Registration')),
      body: const Center(
        child: Text('Class Registration Page Content', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class ForumsPage extends StatelessWidget {
  const ForumsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Forums')),
      body: const Center(
        child: Text('Student Forums Page Content', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Academic Support')),
      body: const Center(
        child: Text('Academic Support Page Content', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fee Payment')),
      body: const Center(
        child: Text('Fee Payment Page Content', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Digital Library')),
      body: const Center(
        child: Text('Digital Library Page Content', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Job & Training Opportunities')),
      body: const Center(
        child: Text('Job & Training Opportunities Page Content', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class TransportPage extends StatelessWidget {
  const TransportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transportation')),
      body: const Center(
        child: Text('Transportation Page Content', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}