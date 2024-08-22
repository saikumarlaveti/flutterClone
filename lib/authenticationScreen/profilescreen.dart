import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/profile_picture.png'), // Replace with your profile picture asset
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              'Saikumar Laveti',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          Center(
            child: Text(
              '23 years old',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 24),
          Text(
            'About Me',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'I am a software engineer who loves to explore new technologies and build cool stuff. '
            'I enjoy traveling, photography,listening music  in my free time.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 24),
          Text(
            'Interests',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Wrap(
            spacing: 10,
            children: [
              Chip(
                label: Text('Traveling'),
                backgroundColor: Colors.pink,
              ),
              Chip(
                label: Text('Photography'),
                backgroundColor: Colors.pink,
              ),
              Chip(
                label: Text('Guitar'),
                backgroundColor: Colors.pink,
              ),
              Chip(
                label: Text('Coding'),
                backgroundColor: Colors.pink,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
