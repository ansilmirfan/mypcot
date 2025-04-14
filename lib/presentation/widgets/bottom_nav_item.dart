import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavItem extends StatelessWidget {
  final String path;
  final String label;
  const BottomNavItem({super.key, required this.label, required this.path});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [SvgPicture.asset(path), Text(label)],
    );
  }
}
