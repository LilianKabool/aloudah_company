import 'package:flutter/material.dart';

import '../widgets/about_us_company_info.dart';
import '../widgets/about_us_who_are_we.dart';
import '../widgets/divider_item.dart';
import '../widgets/space_item.dart';

class AboutUsForAdminScreen extends StatelessWidget {
  const AboutUsForAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AboutUsWhoAreWe(),
        ),
        const SpaceItem(),
        const DividerItem(),
        const SpaceItem(),
        Expanded(
          child: AboutUsCompanyInfo(),
        ),
        Expanded(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.5),
              BlendMode.dstIn,
            ),
            child: Image.asset(
              'assets/images/Logo2.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
