import 'package:flutter/material.dart';
import 'package:reading_mockups/utils/mockup_colors.dart';

class TinderDescription extends StatelessWidget {
  const TinderDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'By tapping Create Account or Sign In, you agree to our\n',
        children: [
          TextSpan(
            text: 'Terms.',
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: MockupColors.white,
              decorationThickness: .8,
              fontWeight: FontWeight.w700,
            ),
          ),
          const TextSpan(text: ' Learn how we process your data in our '),
          TextSpan(
            text: 'Privacy\nPolicy',
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: MockupColors.white,
              decorationThickness: .8,
              fontWeight: FontWeight.w700,
            ),
          ),
          const TextSpan(text: ' and '),
          TextSpan(
            text: 'Cookies Policy.',
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: MockupColors.white,
              decorationThickness: .8,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      style: TextStyle(
        color: MockupColors.white,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}
