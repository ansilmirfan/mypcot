import 'package:flutter/material.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';

class ProfilePictureAvathar extends StatelessWidget {
  final String path;
  final double radius;
  final bool border;

  const ProfilePictureAvathar({
    super.key,
    required this.path,
    this.radius = 20,
    this.border = false,
  });
  factory ProfilePictureAvathar.bordered({
    required String path,
    double radius = 20,
  }) {
    return ProfilePictureAvathar(path: path, border: true, radius: radius);
  }

  @override
  Widget build(BuildContext context) {
    final Widget circleAvathar = CircleAvatar(
      backgroundImage: AssetImage(path),
      radius: 20,
    );
    return border
        ? CircleAvatar(
          backgroundColor: AppColors.coralOrange,
          radius: radius + 1,
          child: circleAvathar,
        )
        : circleAvathar;
  }
}
