import 'package:flutter/material.dart';
import 'package:reading_mockups/utils/mockup_colors.dart';

class TinderButton extends StatelessWidget {
  const TinderButton({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: 52,
      width: size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: MockupColors.white,
          width: 1.5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(32),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: 18,
            color: MockupColors.white,
          ),
          Text(
            label,
            style: TextStyle(
              color: MockupColors.brilliance,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
