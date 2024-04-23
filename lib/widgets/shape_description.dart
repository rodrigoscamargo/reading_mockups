import 'package:flutter/material.dart';
import 'package:reading_mockups/utils/mockup_colors.dart';

class ShapeDescription extends StatelessWidget {
  const ShapeDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Get your Money\nUnder Control',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: MockupColors.brilliance,
            height: 1.2,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          'Manage your expenses.\nSeamlessly.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: MockupColors.astrogranite,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}
