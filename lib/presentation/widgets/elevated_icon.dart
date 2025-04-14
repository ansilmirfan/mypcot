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
        Material(
          elevation: 4,
          shape: const CircleBorder(),
          color: AppColors.white,
          child: SvgPicture.asset(path, height: size),
        ),
        Material(
          type: MaterialType.transparency,

          shape: const CircleBorder(),
          child: InkWell(
            customBorder: CircleBorder(),
            onTap: () {},

            child: SizedBox(width: size, height: size),
          ),
        ),
      ],
    );
  }
}
