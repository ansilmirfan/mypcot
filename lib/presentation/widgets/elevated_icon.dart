import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';

class ElevatedIcon extends StatelessWidget {
  final String path;
  final double size;

  const ElevatedIcon({super.key, required this.path, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.15),
                blurRadius: 5,
                spreadRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: SvgPicture.asset(path, height: size, width: size),
        ),
        Material(
          type: MaterialType.transparency,
          shape: const CircleBorder(),
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: () {},
            child: SizedBox(width: size, height: size),
          ),
        ),
      ],
    );
  }
}
