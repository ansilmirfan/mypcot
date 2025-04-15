import 'package:flutter/material.dart';
import 'package:mypcot/presentation/other/quick_highlight_items.dart';
import 'package:mypcot/presentation/widgets/active_card2.dart';

import 'package:mypcot/presentation/widgets/active_orders_card.dart';
import 'package:mypcot/presentation/widgets/quick_action_card.dart';

class QuickHighlightList extends StatelessWidget {
  const QuickHighlightList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: FractionallySizedBox(
              heightFactor: 0.9,
              widthFactor: 0.9,
              child: Container(
                decoration: BoxDecoration(
                  color: QuickHighlightItems.highlightCardColor[index],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    //left side
                    Expanded(
                      child: QuickActionCard(
                        path: QuickHighlightItems.quickActionCardImage[index],
                        text:
                            QuickHighlightItems
                                .quickActionCardButtonText[index],
                        bgColor: QuickHighlightItems.buttonBgColor[index],
                      ),
                    ),
                    //right side
                    Expanded(
                      child: Stack(
                        children: [
                          if (index != 0)
                            ActiveCard2(index: index, fromBottom: true),
                          ActiveCard2(index: index),
                          ActiveCard(index: index),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
