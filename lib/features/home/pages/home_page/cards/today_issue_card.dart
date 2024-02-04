import 'package:flutter/material.dart';
import 'package:tododoc/shared/index.dart';

class TodayIssueCard extends StatelessWidget {
  const TodayIssueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 450,
      color: const Color(0xFFFFF6F6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('오늘의 이슈토론', style: Theme.of(context).textTheme.headlineSmall),
            const VerticalGap(20),
            Assets.images.todayIssue.image(),
          ],
        ),
      ),
    );
  }
}
