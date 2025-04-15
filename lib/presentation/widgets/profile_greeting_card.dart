import 'package:flutter/material.dart';
import 'package:mypcot/presentation/widgets/elevated_icon.dart';

class ProfileGreetingCard extends StatelessWidget {
  const ProfileGreetingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Welcome, Mypcot !!',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
      subtitle: Text('here is your dashboard...'),
      trailing: ElevatedIcon(path: 'assets/icons/search_icon.svg', size: 55),
    );
  }
}
