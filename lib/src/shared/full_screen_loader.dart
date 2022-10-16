import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

const String lottieLoaderPath = "assets/lottie/loading_lottie.json";

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Lottie.asset(
                lottieLoaderPath,
                animate: true,
                repeat: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
