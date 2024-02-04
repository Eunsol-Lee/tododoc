import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int index;
  final int count;
  const PageIndicator({super.key, required this.index, required this.count});

  @override
  Widget build(BuildContext context) {
    print(index);
    return Row(
      children: List.generate(
        count,
        (i) => Container(
          width: 10,
          height: 10,
          margin: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            color: i == index ? Colors.black : Colors.grey,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
