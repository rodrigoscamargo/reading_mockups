import 'package:flutter/material.dart';
import 'package:reading_mockups/utils/mockup_colors.dart';

class TinderSignInButton extends StatelessWidget {
  const TinderSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Trouble Signing In?',
      style: TextStyle(
        color: MockupColors.white,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
