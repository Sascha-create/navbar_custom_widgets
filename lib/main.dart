import 'package:flutter/material.dart';
import 'package:navbar_custom_widgets/like_screen.dart';
import 'package:navbar_custom_widgets/news_screen.dart';
import 'package:navbar_custom_widgets/profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppHome(),
    );
  }
}

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const NewsScreen(),
    const LikeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("MyApp"),
      ),
      bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.greenAccent,
          selectedIndex: currentIndex,
          onDestinationSelected: (int index) {
            currentIndex = index;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.newspaper), label: "News"),
            NavigationDestination(icon: Icon(Icons.favorite), label: "Like"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ]),
      body: screens[currentIndex],
    );
  }
}
