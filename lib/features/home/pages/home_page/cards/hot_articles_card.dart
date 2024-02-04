import 'package:flutter/material.dart';

class HotArticlesCard extends StatelessWidget {
  const HotArticlesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 450,
      color: const Color(0xFFFFF6F6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('🔥 HOT 게시글', style: Theme.of(context).textTheme.headlineSmall),
                Text('[더보기]', style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            Text("1 다들 의사 못잡아먹어서 안달이네요", style: Theme.of(context).textTheme.titleLarge),
            Text("2 방금 비행기 놓칠 뻔한 가슴 쫄깃한 ssul", style: Theme.of(context).textTheme.titleLarge),
            Text("3 이제 무서워서 누가 소아과 하냐...", style: Theme.of(context).textTheme.titleLarge),
            Text("4 우리 교수 레지랑 바람나서 사모 옴 ㄷㄷ", style: Theme.of(context).textTheme.titleLarge),
            Text("5 금고형 면허취소...", style: Theme.of(context).textTheme.titleLarge),
            Text("6 주변에 INFP 의사 많나요?", style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}
