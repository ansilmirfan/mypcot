import 'package:flutter/material.dart';
import 'package:mypcot/presentation/other/quick_highlight_items.dart';

import 'package:mypcot/presentation/theme/colors/app_colors.dart';
import 'package:mypcot/presentation/widgets/active_orders_card.dart';

import 'package:mypcot/presentation/widgets/profile_picture_avathar.dart';

class ActiveCard2 extends StatelessWidget {
  final int index;
  final bool fromBottom;

  const ActiveCard2({super.key, required this.index, this.fromBottom = false});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          fromBottom
              ? QuickHighlightItems.bottomAligment[index]
              : QuickHighlightItems.centerAlignment[index],
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final double width = constraints.maxWidth;

              return Container(
                constraints: BoxConstraints(
                  maxWidth:
                      fromBottom
                          ? width * QuickHighlightItems.bottomWidthFactor[index]
                          : width *
                              QuickHighlightItems.centerWidthFactor[index],
                ),
                padding:
                    fromBottom
                        ? QuickHighlightItems.bottomPadding[index]
                        : QuickHighlightItems.middlePadding[index],
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: AppColors.white, spreadRadius: 3),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    if (index == 1 && !fromBottom)
                      Positioned(
                        bottom: -30,
                        left: 15,
                        child: Image.asset(
                          'assets/images/green_line_graph.webp',
                          width: 70,
                        ),
                      ),
                    if (index == 1 && fromBottom)
                      Positioned(
                        left:
                            (width *
                                QuickHighlightItems.bottomWidthFactor[index]) -
                            40,
                        child: Transform.scale(
                          scale: 0.7,
                          child: CustomeAvatarRow(index: 0, badge: true),
                        ),
                      ),
                    if (index == 0 && !fromBottom)
                      Positioned(
                        bottom: -50,
                        left: width * 0.1,
                        child: AvatarRow(index: index),
                      ),

                    fromBottom && index != 0
                        ? QuickHighlightItems.activeText3[index]
                        : QuickHighlightItems.activeText2[index],
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class LinearGraph extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width;
    final double height = size.height;
    Paint paint =
        Paint()
          ..color = AppColors.goldenYellow
          ..style = PaintingStyle.fill
          ..strokeWidth = 2;
    Path path =
        Path()
          ..moveTo(width / 2, height / 2)
          ..lineTo(width, height)
          ..lineTo(0, height / 2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
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
          path: 'assets/images/profile_picture_4.png',
          border: true,
          index: index,
        ),
        _Avatar(
          path: 'assets/images/profile_picture_5.png',
          border: true,
          index: index,
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
        borderColor: AppColors.rosePink,
      ),
    );
  }
}
