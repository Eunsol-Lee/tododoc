import 'package:flutter/material.dart';
import 'package:tododoc/shared/index.dart';

import '../widgets/index.dart';

class HomePageSwipeCard extends StatefulWidget {
  final String title;
  final Color color;
  const HomePageSwipeCard({super.key, required this.title, required this.color});

  @override
  State<HomePageSwipeCard> createState() => _HomePageSwipeCardState();
}

class _HomePageSwipeCardState extends State<HomePageSwipeCard> {
  int currentPage = 0;
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 450,
      color: widget.color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(widget.title, style: Theme.of(context).textTheme.headlineSmall),
                const HorizontalGap(10),
                PageIndicator(index: currentPage, count: 3)
              ],
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                children: [
                  Container(child: Assets.images.dayShift.image()),
                  Container(
                    color: Colors.blue,
                    child: Center(child: Text('Page 2')),
                  ),
                  Container(
                    color: Colors.green,
                    child: Center(child: Text('Page 3')),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
