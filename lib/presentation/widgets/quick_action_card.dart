import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/presentation/other/quick_highlight_items.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';

class QuickActionCard extends StatefulWidget {
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
  State<QuickActionCard> createState() => _QuickActionCardState();
}

class _QuickActionCardState extends State<QuickActionCard> {
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
                SvgPicture.asset(widget.path, width: width * 0.82),
              ],
            );
          },
        ),
        Flexible(
          flex: 3,
          child: ValueListenableBuilder(
            valueListenable: QuickHighlightItems.count,
            builder:
                (context, value, child) => InkWell(
                  onTap: () {
                    QuickHighlightItems.increase();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: widget.bgColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: widget.bgColor, blurRadius: 3),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 5,
                    ),
                    child: Text(
                      widget.text,
                      style: TextStyle(color: AppColors.white),
                    ),
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
