import 'package:flutter/material.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("MyApp"),
      ),
      body: const Center(
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
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.newspaper), label: "News"),
        NavigationDestination(icon: Icon(Icons.favorite), label: "Like"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
      ]),
    );
  }
}
