import 'package:flutter/material.dart';

class ExpertPage extends StatelessWidget {
  final List<Map<String, String>> experts = [
    {'name': 'Dr. Rajesh Prasad', 'phone': '+91 9734567890'},
    {'name': 'Dr. Sachin rajak Johnson', 'phone': '+91 9345678901'},
    {'name': 'Dr. Mahesh Gupta', 'phone': '+91 9456789012'},
    {'name': 'Dr. Sanjana Patel', 'phone': '+91 8567890123'},
    {'name': 'Dr. Jaswinder Singh', 'phone': '+91 9678901234'},
    {'name': 'Dr. Om Mishra', 'phone': '+91 8789012345'},
    {'name': 'Dr. Saloni Sharma', 'phone': '+91 7890123456'},
    {'name': 'Dr. Anubhav Shah', 'phone': '+91 8901234567'},
    // Add more experts as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expert Contact List'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: experts.length,
        itemBuilder: (context, index) {
          final expert = experts[index];
          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              title: Text(
                expert['name']!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                expert['phone']!,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              leading: Icon(Icons.person, size: 40),
            ),
          );
        },
      ),
    );
  }
}