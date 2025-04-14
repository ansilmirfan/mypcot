import 'package:flutter/material.dart';

import 'package:mypcot/presentation/other/center_docked_container.dart';
import 'package:mypcot/presentation/widgets/bottom_nav_item.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

List<String> paths = [
  'assets/icons/home_icon.svg',
  'assets/icons/customers_icon.svg',
  '',
  'assets/icons/khata_icon.svg',
  'assets/icons/order_icon.svg',
];
List<String> labels = ['Home', 'Customers', '', 'Khata', 'Orders'];
int selectedIndex = 0;
List<Widget> body = [
  Container(),
  Container(),
  Container(),
  Container(),
  Container(),
];

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _buildFloatingActionButton(),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: _buildBottomNavigationBar(),

      body: body[selectedIndex],
    );
  }

  CustomPaint _buildBottomNavigationBar() {
    return CustomPaint(
      painter: CenterDockedContainer(),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(labels.length, (index) {
            if (index == 2) {
              return SizedBox();
            }
            return BottomNavItem(
              label: labels[index],
              path: paths[index],
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              selected: index == selectedIndex,
            );
          }),
        ),
      ),
    );
  }

  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      shape: const CircleBorder(),
      child: const Icon(Icons.add),
    );
  }
}
