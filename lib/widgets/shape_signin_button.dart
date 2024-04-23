import 'package:flutter/material.dart';

class ShapeSigningButton extends StatelessWidget {
  const ShapeSigningButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'Already have an account?',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        children: [
          TextSpan(
            text: ' Sign In',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
