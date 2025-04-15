import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';
import 'package:mypcot/presentation/widgets/gap.dart';

class DateFilterRow extends StatelessWidget {
  DateFilterRow({super.key});
  final BoxDecoration boxDecoration = BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.circular(30),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withValues(alpha: 0.15),
        blurRadius: 5,
        spreadRadius: 5,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Gap.width(gap: 10),
        _buildDate(context),
        _buildTineLineDropDown(),
        _buildDatePicker(),
      ],
    );
  }

  Container _buildDatePicker() {
    return Container(
      decoration: boxDecoration,

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Row(
          children: [
            Gap.width(gap: 3),
            SvgPicture.asset('assets/icons/calender_icon.svg', width: 18),
            Gap.width(gap: 3),
            Text(
              'JAN,2021',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Gap.width(gap: 3),
          ],
        ),
      ),
    );
  }

  Container _buildTineLineDropDown() {
    return Container(
      decoration: boxDecoration,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
        child: Row(
          children: [
            Gap.width(gap: 3),
            Text(
              'TIMELINE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Gap.width(gap: 3),
            Icon(Icons.arrow_drop_down, size: 35),
          ],
        ),
      ),
    );
  }

  Column _buildDate(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(alignment: Alignment.centerLeft, child: Text('January,23,2021')),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Today',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
