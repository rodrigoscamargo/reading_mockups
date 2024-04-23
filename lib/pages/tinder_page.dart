import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reading_mockups/widgets/tinder_app_bar.dart';
import 'package:reading_mockups/widgets/tinder_button.dart';
import 'package:reading_mockups/widgets/tinder_description.dart';
import 'package:reading_mockups/widgets/tinder_logo.dart';
import 'package:reading_mockups/widgets/tinder_signin_button.dart';

class TinderPage extends StatefulWidget {
  const TinderPage({super.key});

  @override
  State<TinderPage> createState() => _TinderPageState();
}

class _TinderPageState extends State<TinderPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (context, constraint) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color(0xFFEE7462),
                Color(0xFFE85D6A),
                Color(0xFFEA5C6C),
                Color(0xFFE94976),
              ],
            ),
          ),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraint.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    const SizedBox(
                      height: kToolbarHeight + 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TinderAppBar(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const TinderLogo(),
                              const SizedBox(
                                height: 104,
                              ),
                              const TinderDescription(),
                              Container(
                                margin: const EdgeInsets.fromLTRB(
                                  24,
                                  32,
                                  24,
                                  48,
                                ),
                                child: const Column(
                                  children: [
                                    TinderButton(
                                      label: 'SIGN IN WITH APPLE',
                                      icon: FontAwesomeIcons.apple,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TinderButton(
                                      label: 'SIGN IN WITH FACEBOOK',
                                      icon: FontAwesomeIcons.facebook,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TinderButton(
                                      label: 'SIGN IN WITH PHONE NUMBER',
                                      icon: FontAwesomeIcons.solidComment,
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    TinderSignInButton(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
