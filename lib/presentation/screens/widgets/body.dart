import 'package:flutter/material.dart';
import 'package:nevate_portfolio/core/utils/utils.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // final scrollProvider = Provider.of<ScrollProvider>(context);

    return ScrollablePositionedList.builder(
      padding: EdgeInsets.zero,
      itemCount: BodyUtils.bodyScreen.length,
      itemBuilder: (context, index) => BodyUtils.bodyScreen[index],
      // itemScrollController: scrollProvider.itemScrollController,
    );
  }
}
