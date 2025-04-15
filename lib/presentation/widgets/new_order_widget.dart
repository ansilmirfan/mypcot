import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';
import 'package:mypcot/presentation/widgets/gap.dart';

class NewOrderWidget extends StatelessWidget {
  const NewOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.22,
      width: double.infinity,
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.15),
                blurRadius: 5,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTexts(),
              Gap.width(gap: 40),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: const Color(0xFFFF804E),
                    child: SvgPicture.asset(
                      'assets/icons/order_icon.svg',
                      colorFilter: ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcATop,
                      ),

                      width: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'New order created',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            height: 0,
          ),
        ),

        Text(
          'New Order created with Order',
          style: TextStyle(fontSize: 14, color: AppColors.black, height: -2),
        ),

        Text(
          '09:00 AM',
          style: TextStyle(
            height: -2,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFFF804E),
          ),
        ),

        Text(
          '→',
          style: TextStyle(
            height: -2,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFFF804E),
            fontSize: 30,
          ),
        ),
      ],
    );
  }
}
