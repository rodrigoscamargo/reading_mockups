import 'package:flutter/material.dart';
import 'package:reading_mockups/utils/mockup_colors.dart';
import 'package:reading_mockups/utils/mockup_icons.dart';

class TinderLogo extends StatelessWidget {
  const TinderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          MockupIcons.tinderWhiteIcon,
          height: 45,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          'tinder',
          style: TextStyle(
            color: MockupColors.white,
            fontSize: 56,
            fontWeight: FontWeight.w700,
            letterSpacing: -4,
          ),
        ),
      ],
    );
  }
}
