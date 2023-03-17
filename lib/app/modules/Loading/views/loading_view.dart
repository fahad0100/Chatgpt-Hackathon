import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../controllers/loading_controller.dart';

class LoadingView extends GetView<LoadingController> {
  const LoadingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: LoadingAnimationWidget.threeArchedCircle(
                color: Colors.red, size: 50)),
        SizedBox(
          height: 10,
        ),
        AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText('Loading ...',
                textStyle: GoogleFonts.lato(
                    color: Colors.red, fontWeight: FontWeight.bold)),
          ],
          isRepeatingAnimation: true,
          onTap: () {
            print("Tap Event");
          },
        ),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 50,
          child: AnimatedTextKit(
            repeatForever: true,
            pause: const Duration(milliseconds: 1000),
            animatedTexts: [
              TypewriterAnimatedText(
                'Step 1: Write Information',
              ),
              TypewriterAnimatedText(
                'Step 2: Get Resume from your information',
              ),
              TypewriterAnimatedText(
                'Step 3: Get Questions to Help in Interview',
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

