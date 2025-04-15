import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';

class QuickActionCard extends StatelessWidget {
  final String path;
  final String text;
  final Color bgColor;
  const QuickActionCard({
    super.key,
    required this.path,
    required this.text,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            double width = constraints.maxWidth;
            return Stack(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.lightPink,
                  radius: width * 0.40,
                ),
                SvgPicture.asset(path, width: width * 0.82),
              ],
            );
          },
        ),
        Flexible(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: bgColor, blurRadius: 3)],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: Text(text, style: TextStyle(color: AppColors.white)),
          ),
        ),
      ],
    );
  }
}
