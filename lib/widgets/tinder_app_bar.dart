import 'package:flutter/material.dart';
import 'package:reading_mockups/utils/mockup_colors.dart';

class TinderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TinderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 30,
            child: Stack(
              children: [
                Positioned(
                  child: Transform(
                    alignment: Alignment.centerLeft,
                    transform: Matrix4.rotationZ(0.7),
                    child: Container(
                      width: 20,
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(26)),
                        color: MockupColors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 3,
                  child: Transform(
                    alignment: Alignment.centerLeft,
                    transform: Matrix4.rotationZ(-0.7),
                    child: Container(
                      width: 20,
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(26)),
                        color: MockupColors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
