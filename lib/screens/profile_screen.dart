import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'), // Title of the app bar
        centerTitle: true, // Center the title
      ),
      body: const Center(
        child:
            Text('User Profile Screen'), // Text content of the profile screen
      ),
    );
  }
}
