import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_master/utils/asset_utils.dart';

import '../../constant.dart';
import '../../utils/styles.dart';

class InfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(children: [
        Image.asset(
          imgBlackBackground.fromAssets(),
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          alignment: Alignment.center,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 30.0,
              fontFamily: 'Agne',
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                    'Native Android Developer',
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                  speed: const Duration(milliseconds: 80)
                ),
                TypewriterAnimatedText(
                    'Solid understanding in Native Android',
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                    speed: const Duration(milliseconds: 80)
                ),
                TypewriterAnimatedText(
                    'in Jetpack Compose',
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                    speed: const Duration(milliseconds: 80)
                ),
                TypewriterAnimatedText(
                    'in Flutter',
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                    speed: const Duration(milliseconds: 80)
                ),
                TypewriterAnimatedText(
                    'Almost 5yr experiences in Android Development',
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                    speed: const Duration(milliseconds: 80)
                ),
                TypewriterAnimatedText(
                    'I love coding, love improving myself and taking advantage to build a Product Business',
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                    speed: const Duration(milliseconds: 80)
                ),
              ],
              onTap: () {
                print("Tap Event");
              },
              totalRepeatCount: 1000,
              pause: const Duration(milliseconds: 2000),
            ),
          ),
        )
      ]),
    );
  }
}
