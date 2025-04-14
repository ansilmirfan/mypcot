import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';

class ElevatedIcon extends StatelessWidget {
  final String path;
  final double size;
  const ElevatedIcon({super.key, required this.path, this.size = 20});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      elevation: 4,
      child: InkWell(onTap: () {}, child: SvgPicture.asset(path, width: size)),
    );
  }
}
