import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: Text(style: TextStyle(fontSize: 32), 'Profile'),
            ),
            Icon(size: 56, Icons.person),
            Text(style: TextStyle(fontSize: 24), "Max Mustermann")
          ],
        ),
      ),
    );
  }
}
