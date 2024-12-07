import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class SubscriptionCardChip extends StatelessWidget {
  final String text;

  const SubscriptionCardChip(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.primary,
    );

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.copy,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Text(text, style: textStyle),
    );
  }
}
