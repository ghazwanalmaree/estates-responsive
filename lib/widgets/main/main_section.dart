import 'package:estates_with_responsive/screens/home_screen.dart';
import 'package:estates_with_responsive/widgets/main/home_banner.dart';
import 'package:estates_with_responsive/widgets/main/icons_info.dart';
import 'package:estates_with_responsive/widgets/main/projects.dart';
import 'package:estates_with_responsive/widgets/main/recommendation.dart';
import 'package:flutter/material.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
        mainSection: SingleChildScrollView(
      child: Column(children: [
        HomeBanner(),
        IconsInfo(),
        Projects(),
        Recommendations(),
      ]),
    ));
  }
}
