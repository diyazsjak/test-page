import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class PageFooter extends StatelessWidget {
  const PageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.copy.withOpacity(0.3),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('terms of use', style: textStyle),
        Text('privacy policy', style: textStyle),
        Ink(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            'Restore purchase',
            style: textStyle.copyWith(color: AppColors.copy.withOpacity(0.4)),
          ),
        ),
      ],
    );
  }
}
