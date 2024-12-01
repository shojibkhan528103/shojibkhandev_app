import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutMeView extends GetView {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture and Name
              CircleAvatar(
                radius: 60,
                backgroundImage: const AssetImage('assets/sb.JPG'),
                backgroundColor: Colors.grey[200],
              ),
              const SizedBox(height: 20),
              Text(
                'Shojib khan',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const Text(
                'Flutter Developer | Software Engineer',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const Divider(height: 30, thickness: 1, color: Colors.grey),

              // Education Section
              _buildSection(
                context,
                screenWidth: screenWidth,
                icon: Icons.school,
                title: 'Education',
                items: [
                  _buildItem('Bachelor of Computer Science',
                      'University of XYZ, 2018 - 2022'),
                  _buildItem(
                      'High School', 'ABC High School, 2016 - 2018'),
                ],
              ),

              // Experience Section
              _buildSection(
                context,
                screenWidth: screenWidth,
                icon: Icons.work,
                title: 'Experience',
                items: [
                  _buildItem(
                      'Flutter Developer', 'Shataj Soft Limited, Jan 2022 - Present'),
                  _buildItem('Intern - Software Engineer',
                      'Startup XYZ, Jun 2022 - Dec 2022'),
                ],
              ),

              // Skills Section
              _buildSection(
                context,
                screenWidth: screenWidth,
                icon: Icons.code,
                title: 'Skills',
                items: [
                  _buildItem('Flutter & Dart'),
                  _buildItem('RESTful APIs'),
                  _buildItem('Firebase Integration'),
                  _buildItem('State Management (GetX, Provider)'),
                ],
              ),

              // Contact Section
              _buildSection(
                context,
                screenWidth: screenWidth,
                icon: Icons.contact_mail,
                title: 'Contact',
                items: [
                  _buildItem('Email: shojibkhan.dev@gmail.com'),
                  _buildItem('Phone: +880 1521700903'),
                  _buildItem('LinkedIn: linkedin.com/in/shojibkhan.dev'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(
      BuildContext context, {
        required double screenWidth,
        required IconData icon,
        required String title,
        required List<Widget> items,
      }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.blueAccent, size: 28),
            const SizedBox(width: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            width: screenWidth - 32, // Full width with padding
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: items,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildItem(String title, [String? subtitle]) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          if (subtitle != null)
            Text(
              subtitle,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: AboutMeView(),
    ),
  );
}
