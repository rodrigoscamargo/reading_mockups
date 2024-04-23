import 'package:flutter/material.dart';
import 'package:reading_mockups/utils/mockup_colors.dart';

class ShapeButton extends StatelessWidget {
  const ShapeButton({
    super.key,
    required this.label,
    this.color,
    this.icon,
    this.style,
  });

  final String label;
  final Color? color;
  final String? icon;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: 60,
      width: size.width,
      decoration: BoxDecoration(
        color: color ?? MockupColors.purple,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Container(
              height: 24,
              width: 24,
              margin: const EdgeInsets.only(right: 8),
              child: Image.asset(icon!),
            ),
          Text(
            label,
            style: style ??
                TextStyle(
                  color: MockupColors.brilliance,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ],
      ),
    );
  }
}
