import 'package:flutter/material.dart';
import 'package:tododoc/features/home/pages/home_page/authentication_box.dart';
import 'package:tododoc/features/index.dart';
import 'package:tododoc/shared/index.dart';

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
        ],
      ),
    );
  }
}
