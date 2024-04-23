import 'package:flutter/material.dart';
import 'package:reading_mockups/utils/mockup_colors.dart';
import 'package:reading_mockups/utils/mockup_icons.dart';
import 'package:reading_mockups/widgets/shape_button.dart';
import 'package:reading_mockups/widgets/shape_description.dart';
import 'package:reading_mockups/widgets/shape_logo.dart';
import 'package:reading_mockups/widgets/shape_signin_button.dart';

class ShapePage extends StatefulWidget {
  const ShapePage({super.key});

  @override
  State<ShapePage> createState() => _ShapePageState();
}

class _ShapePageState extends State<ShapePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: MockupColors.gray,
      child: LayoutBuilder(builder: (context, constraint) {
        return SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraint.maxHeight,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: kToolbarHeight,
                    ),
                    const ShapeLogo(),
                    const SizedBox(
                      height: 48,
                    ),
                    const ShapeDescription(),
                    const SizedBox(
                      height: 104,
                    ),
                    ShapeButton(
                      label: 'Sign Up with Email ID',
                      color: MockupColors.blue,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ShapeButton(
                      icon: MockupIcons.googleColorIcon,
                      label: 'Sign Up with Google',
                      color: MockupColors.white,
                      style: TextStyle(
                        color: MockupColors.boatAnchor,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    const ShapeSigningButton(),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
