import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(style: TextStyle(fontSize: 32), 'News'),
            Icon(size: 48, Icons.newspaper)
          ],
        ),
      ),
    );
  }
}
