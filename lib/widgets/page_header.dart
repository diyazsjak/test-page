import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    const titleTextStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.copy,
    );

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset('assets/icons/arrow_back.png'),
          ),
        ),
        const Align(
          alignment: Alignment.center,
          child: Text('Выберите подписку', style: titleTextStyle),
        ),
      ],
    );
  }
}
