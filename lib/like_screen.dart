import 'package:flutter/material.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({
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
              child: Text(style: TextStyle(fontSize: 32), 'Likes'),
            ),
            Text(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
                "Hier findest du deine gelikten\n Nachrichten")
          ],
        ),
      ),
    );
  }
}
