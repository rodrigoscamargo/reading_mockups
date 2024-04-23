import 'package:flutter/material.dart';
import 'package:reading_mockups/utils/mockup_colors.dart';

class ShapeLogo extends StatelessWidget {
  const ShapeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: MockupColors.blue,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: MockupColors.blue,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(50, 50),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          height: 100,
          width: 50,
          decoration: BoxDecoration(
            color: MockupColors.blue,
            borderRadius: const BorderRadius.only(
              topRight: Radius.elliptical(50, 50),
              bottomLeft: Radius.elliptical(50, 50),
            ),
          ),
        )
      ],
    );
  }
}
