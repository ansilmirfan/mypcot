import 'package:flutter/material.dart';
import 'package:mypcot/presentation/widgets/elevated_icon.dart';
import 'package:mypcot/presentation/widgets/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Gap.width(gap: 15),
            ElevatedIcon(path: 'assets/icons/filter_icon.svg'),
          ],
        ),
        actions: [ElevatedIcon(path: 'asstes/icons/')],
      ),
    );
  }
}
