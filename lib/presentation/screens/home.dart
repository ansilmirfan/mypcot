import 'package:flutter/material.dart';

import 'package:mypcot/presentation/widgets/elevated_icon.dart';
import 'package:mypcot/presentation/widgets/gap.dart';
import 'package:mypcot/presentation/widgets/profile_greeting_card.dart';
import 'package:mypcot/presentation/widgets/profile_picture_avathar.dart';
import 'package:mypcot/presentation/widgets/quick_highlight_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [const ProfileGreetingCard(), const QuickHighlightList()],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: Row(
        children: [
          Gap.width(gap: 15),
          ElevatedIcon(path: 'assets/icons/filter_icon.svg'),
        ],
      ),
      actions: [
        ElevatedIcon(path: 'assets/icons/favourite_icon.svg'),
        Gap.width(gap: 25),
        ElevatedIcon(
          path: 'assets/icons/bell_icon.svg',
          badge: true,
          size: 18,
          padding: 9,
        ),
        Gap.width(gap: 25),
        const ProfilePictureAvathar(path: 'assets/images/oreo.jpg', radius: 16),
        Gap.width(gap: 20),
      ],
    );
  }
}
