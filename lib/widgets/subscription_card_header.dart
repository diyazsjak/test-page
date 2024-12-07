import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../models/subscription_model.dart';

class SubscriptionCardHeader extends StatelessWidget {
  final SubscriptionModel subscription;
  final bool isSelected;

  const SubscriptionCardHeader({
    super.key,
    required this.subscription,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    const size = 28.0;
    const mainTextStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: AppColors.copy,
    );
    const priceTextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.copy,
    );
    const subtitleTextStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.copy,
    );
    const previousPriceTextStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.copyLight,
      decoration: TextDecoration.lineThrough,
      decorationColor: AppColors.copyLight,
    );

    return Row(
      children: [
        if (isSelected)
          Container(
            height: size,
            width: size,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: AppColors.gradient),
            ),
            child: Image.asset('assets/icons/check.png'),
          )
        else
          Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.copy),
            ),
          ),
        const SizedBox(width: 21),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subscription.duration, style: mainTextStyle),
            const SizedBox(height: 6),
            Text(subscription.description, style: subtitleTextStyle),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Text(subscription.price, style: priceTextStyle),
            if (subscription.originalPrice != null)
              Text(subscription.originalPrice!, style: previousPriceTextStyle),
          ],
        ),
        const SizedBox(width: 6),
      ],
    );
  }
}
