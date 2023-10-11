import 'package:flutter/material.dart';
import 'package:instagram/src/presentation/nav_bar/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 151, 237, 154)),
        useMaterial3: true,
      ),
      home: const NavBar(),
    );
  }
}
