import 'package:flutter/material.dart';
import 'package:mypcot/presentation/other/quick_highlight_items.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';
import 'package:mypcot/presentation/widgets/profile_picture_avathar.dart';

class ActiveCard extends StatelessWidget {
  final int index;
  const ActiveCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Align(
              alignment: const Alignment(-1, -1.1),
              child: Container(
                padding: const EdgeInsets.all(5),
                height: height * 0.33,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: QuickHighlightItems.buttonBgColor[index],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color:  QuickHighlightItems.buttonBgColor[index], blurRadius: 3),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: QuickHighlightItems.activeText1[index],
                    ),
                    Positioned(
                      bottom: -22,
                      left: width * 0.15,
                      child: AvatarRow(index: index),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class AvatarRow extends StatelessWidget {
  final int index;
  const AvatarRow({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,

      children: [
        _Avatar(
          path: 'assets/images/profile_picture_1.png',
          border: true,
          index: index,
        ),
        _Avatar(
          path: 'assets/images/profile_picture_2.jpg',
          border: true,
          index: index,
        ),
        _Avatar(
          path: 'assets/images/profile_picture_3.png',
          border: true,
          index: index,
        ),
        if (index == 1)
          Align(
            widthFactor: 0.3,
            child: Transform.scale(
              scale: 0.5,
              child: IconButton.filled(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColors.white),
                ),
                disabledColor: AppColors.white,
                color: AppColors.black,
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ),
          ),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  final String path;
  final bool border;
  final int index;

  const _Avatar({required this.path, this.border = false, required this.index});

  @override
  Widget build(BuildContext context) {
    return Align(
      widthFactor: 0.7,
      child: ProfilePictureAvathar(
        path: path,
        radius: 20,
        border: border,
        borderColor: QuickHighlightItems.avatharBorderColor[index],
      ),
    );
  }
}
