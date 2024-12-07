import 'package:flutter/material.dart';

import '../app_colors.dart';

class BuySubscriptionButton extends StatelessWidget {
  const BuySubscriptionButton({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.copy,
    );

    return Material(
      color: const Color(0x00000000),
      child: InkWell(
        borderRadius: BorderRadius.circular(29),
        onTap: () {},
        child: Ink(
          padding: const EdgeInsets.symmetric(vertical: 18),
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: AppColors.gradient),
            borderRadius: BorderRadius.circular(29),
          ),
          child: const Center(child: Text('Купить', style: textStyle)),
        ),
      ),
    );
  }
}
