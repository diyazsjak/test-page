import 'package:flutter/material.dart';

import '../app_colors.dart';

class SubscriptionDetailsList extends StatelessWidget {
  final List<String> details;

  const SubscriptionDetailsList(this.details, {super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.copy,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31),
      child: Column(
        children: details
            .map(
              (detail) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Row(
                  children: [
                    Container(
                      height: 7,
                      width: 7,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.copy,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Flexible(child: Text(detail, style: textStyle)),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
