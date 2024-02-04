import 'package:flutter/material.dart';

import 'home_page_swipe_card.dart';

class DayShiftCard extends StatelessWidget {
  const DayShiftCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePageSwipeCard(
      title: '대진 구함',
      color: Color(0xFFFAF7F2),
    );
  }
}
