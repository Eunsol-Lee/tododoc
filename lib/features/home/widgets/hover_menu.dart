import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tododoc/shared/index.dart';

enum HoverMenuItems {
  onlineClinics,
  jobBoards,
  openingPractices,
  conferences,
  hotTopics,
  communities,
  fluffy;

  String get label {
    switch (this) {
      case HoverMenuItems.onlineClinics:
        return '온라인 진료실';
      case HoverMenuItems.jobBoards:
        return '구인 구직';
      case HoverMenuItems.openingPractices:
        return '개원의 모든 것';
      case HoverMenuItems.conferences:
        return '학회 정보';
      case HoverMenuItems.hotTopics:
        return 'HOT 게시판';
      case HoverMenuItems.communities:
        return '커뮤니티';
      case HoverMenuItems.fluffy:
        return '뭉게뭉게';
    }
  }

  List<String> get subMenuItems {
    switch (this) {
      case HoverMenuItems.onlineClinics:
        return [];
      case HoverMenuItems.jobBoards:
        return [];
      case HoverMenuItems.openingPractices:
        return ['법률 상담', '경영 상담', '세금 상담', '인테리어'];
      case HoverMenuItems.conferences:
        return [];
      case HoverMenuItems.hotTopics:
        return [];
      case HoverMenuItems.communities:
        return ['자유게시판', '익명게시판', '맛집게시판', '지하게시판', '연애상담', '육아고민', '이슈토론'];
      case HoverMenuItems.fluffy:
        return [];
    }
  }

  static int maxSubMenuItems() {
    return HoverMenuItems.values
        .map((e) => e.subMenuItems.length)
        .reduce((value, element) => value > element ? value : element);
  }
}

class HoverMenu extends HookWidget {
  const HoverMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final isHovering = useState(false);

    return Container(
      color: const Color(0xFFFFF6F6),
      child: MouseRegion(
        onEnter: (_) => isHovering.value = true,
        onExit: (_) => isHovering.value = false,
        child: Table(
          children: [
            TableRow(
              children: [
                for (final item in HoverMenuItems.values)
                  TableCell(
                    child: GestureDetector(
                      onTap: () {
                        print(item);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          item.label,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            TableRow(children: [
              for (int row = 0; row < HoverMenuItems.values.length; row++)
                TableCell(
                  child: Container(
                    color: const Color(0xFFFFB9CF),
                    child: const SizedBox(height: 5),
                  ),
                ),
            ]),
            TableRow(children: [
              for (int row = 0; row < HoverMenuItems.values.length; row++)
                TableCell(
                  child: isHovering.value
                      ? const VerticalGap(20)
                      : const SizedBox(),
                ),
            ]),
            for (int row = 0; row < HoverMenuItems.maxSubMenuItems(); row++)
              TableRow(
                children: [
                  for (final item in HoverMenuItems.values)
                    TableCell(
                      child: isHovering.value
                          ? GestureDetector(
                              onTap: () {
                                print(item);
                              },
                              child: Center(
                                child: Text(
                                  item.subMenuItems.length > row
                                      ? item.subMenuItems[row]
                                      : '',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ),
                ],
              ),
            TableRow(children: [
              for (int row = 0; row < HoverMenuItems.values.length; row++)
                TableCell(
                  child: isHovering.value
                      ? const VerticalGap(20)
                      : const SizedBox(),
                ),
            ]),
            TableRow(children: [
              for (int row = 0; row < HoverMenuItems.values.length; row++)
                TableCell(
                  child: Container(
                    color: const Color(0xFFFFB9CF),
                    child: isHovering.value
                        ? const SizedBox(height: 5)
                        : const SizedBox(),
                  ),
                ),
            ]),
          ],
        ),
      ),
    );
  }
}
