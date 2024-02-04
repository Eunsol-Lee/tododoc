import 'package:flutter/material.dart';
import 'package:tododoc/features/index.dart';
import 'package:tododoc/shared/index.dart';

import 'cards/index.dart';
import 'widgets/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const VerticalGap(20),
          Assets.images.tododocLogo.image(height: 174),
          const VerticalGap(20),
          const HoverMenu(),
          const VerticalGap(20),
          _mainAdBannerAndAuthenticationBox(),
          const VerticalGap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                DayShiftCard(),
                const HorizontalGap(10),
                HotArticlesCard(),
                const HorizontalGap(10),
                TodayIssueCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _mainAdBannerAndAuthenticationBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Assets.images.mainAdBanner.image(width: 925, height: 233),
          const HorizontalGap(10),
          const AuthenticationBox(),
          const HorizontalGap(10),
        ],
      ),
    );
  }
}
