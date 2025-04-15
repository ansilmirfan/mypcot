import 'package:flutter/material.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';

class QuickHighlightItems {
  static TextStyle boldTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: Colors.white,
  );
  static TextStyle thinTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static TextStyle boldTextStyleBlack = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 22,
    color: Colors.black,
  );
  static TextStyle thinTextStyleBlack = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
  static TextStyle thinTextStyleBlackSmall = TextStyle(
    color: Colors.black,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  static List<Color> highlightCardColor = [
    AppColors.skyBlue,
    AppColors.mintGreen,
    AppColors.goldenYellow,
  ];
  static List<String> quickActionCardImage = [
    'assets/images/orders-illustration-image.svg',
    'assets/images/custome_illustration_image.svg',
    'assets/images/subscriptions-illustration-image.svg',
  ];
  static List<String> quickActionCardButtonText = [
    'Orders',
    'View Customers',
    'Subscriptions',
  ];
  static List<Color> buttonBgColor = [
    AppColors.coralOrange,
    AppColors.rosePink,
    AppColors.royalBlue,
  ];
  static List<RichText> activeText1 = [
    RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'You have',
        style: thinTextStyle,
        children: [
          TextSpan(text: ' 3 ', style: boldTextStyle),
          TextSpan(text: 'active orders from'),
        ],
      ),
    ),
    RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: ' 15 ',
        style: boldTextStyle,
        children: [TextSpan(text: 'new customers', style: thinTextStyle)],
      ),
    ),
    RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: ' 03 ',
        style: boldTextStyle,
        children: [TextSpan(text: 'deliveries', style: thinTextStyle)],
      ),
    ),
  ];
  static List<Color> avatharBorderColor = [
    AppColors.coralOrange,
    AppColors.teal,
    AppColors.royalBlue,
  ];
  static List<double> centerWidthFactor = [0.6, 0.8, 0.6];
  static List<double> bottomWidthFactor = [0.0, 0.6, 0.6];

  static List<Alignment> centerAlignment = [
    Alignment(0.0, 0.2),
    Alignment(0.0, -0.15),
    Alignment(0, -0.15),
  ];

  static List<RichText> activeText2 = [
    RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: ' 02 ',
        style: boldTextStyleBlack,
        children: [
          TextSpan(text: 'pending', style: thinTextStyleBlackSmall),
          TextSpan(text: ' Orders from', style: thinTextStyleBlack),
        ],
      ),
    ),
    RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: '1.8 %  ',
        style: boldTextStyleBlack,
        children: [
          TextSpan(
            text: '  ↑  ',
            style: boldTextStyleBlack.copyWith(
              color: AppColors.mintGreen,
              fontSize: 25,
            ),
          ),
        ],
      ),
    ),
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text: '10 ',
        style: boldTextStyleBlack,
        children: [
          TextSpan(text: 'Active ', style: thinTextStyleBlackSmall),
          TextSpan(text: 'Subscriptions', style: thinTextStyleBlack),
        ],
      ),
    ),
  ];
  static List<RichText> activeText3 = [
    RichText(textAlign: TextAlign.center, text: TextSpan(text: ' 02 ')),
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text: '10 ',
        style: boldTextStyleBlack,
        children: [
          TextSpan(text: 'Active ', style: thinTextStyleBlackSmall),
          TextSpan(text: 'Customers', style: thinTextStyleBlack),
        ],
      ),
    ),
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text: '119 ',
        style: boldTextStyleBlack,
        children: [
          TextSpan(text: 'Pending ', style: thinTextStyleBlackSmall),
          TextSpan(text: 'Deleiveries', style: thinTextStyleBlack),
        ],
      ),
    ),
  ];
  static List<EdgeInsets> middlePadding = [
    EdgeInsets.only(top: 5, bottom: 20, left: 5, right: 5),
    EdgeInsets.only(top: 10, bottom: 30, left: 5, right: 5),
    EdgeInsets.only(top: 15, left: 5, right: 5, bottom: 5),
  ];
  static List<EdgeInsets> bottomPadding = [
    EdgeInsets.all(0),
    EdgeInsets.only(top: 15, bottom: 5, left: 5, right: 15),
    EdgeInsets.all(5),
  ];
  static List<Alignment> bottomAligment = [
    Alignment(0.0, 0.2),
    Alignment(-0.8, 0.8),
    Alignment(0.6, 0.6),
  ];
}
