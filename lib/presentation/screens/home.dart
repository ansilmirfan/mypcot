import 'package:flutter/material.dart';
import 'package:mypcot/presentation/widgets/elevated_icon.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            ElevatedIcon(path: 'assets/icons/filter_icon.svg'),
          ],
        ),
      ),
    
    );
  }
}
