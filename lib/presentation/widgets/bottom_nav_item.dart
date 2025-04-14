import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';

class BottomNavItem extends StatelessWidget {
  final String path;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const BottomNavItem({
    super.key,
    required this.label,
    required this.path,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(path, height: 20),
            Text(
              label,
              style: TextStyle(
                color:
                    selected ? Theme.of(context).primaryColor : AppColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
