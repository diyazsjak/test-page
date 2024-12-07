import 'dart:ui';

import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class BlurredContainer1 extends StatelessWidget {
  const BlurredContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaX: 35,
        sigmaY: 50,
        tileMode: TileMode.decal,
      ),
      child: Container(
        height: 359,
        width: 317,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(500),
        ),
      ),
    );
  }
}

class BlurredContainer2 extends StatelessWidget {
  const BlurredContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaX: 40,
        sigmaY: 30,
        tileMode: TileMode.decal,
      ),
      child: Container(
        height: 359,
        width: 414,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(500),
        ),
      ),
    );
  }
}
