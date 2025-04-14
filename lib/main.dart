import 'package:flutter/material.dart';
import 'package:mypcot/presentation/screens/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home:BottomNavBar() ,);
  }
}
