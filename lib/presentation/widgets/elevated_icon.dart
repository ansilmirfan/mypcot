import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';

class ElevatedIcon extends StatelessWidget {
  final String path;
  final double size;
  final double padding;
  final bool badge;
  const ElevatedIcon({
    super.key,
    required this.path,
    this.size = 40,
    this.badge = false,
    this.padding = 0,
  });

  @override
  Widget build(BuildContext context) {
    Widget icon = Container(
      padding: padding == 0 ? EdgeInsets.all(0) : EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.15),
            blurRadius: 5,
            spreadRadius: 5,
           
          ),
        ],
      ),
      child: SvgPicture.asset(path, width: size),
    );
    return Stack(
      alignment: Alignment.center,
      children: [
        badge
            ? Badge.count(
              alignment: Alignment(0.5, -0.5),
              count: 2,
              child: icon,
            )
            : icon,
        Material(
          type: MaterialType.transparency,
          shape: const CircleBorder(),
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: () {},
            child: Padding(
              padding:  EdgeInsets.all(padding),
              child: SizedBox(width: size, height: size),
            ),
          ),
        ),
      ],
    );
  }
}
