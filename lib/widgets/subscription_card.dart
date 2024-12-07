import 'package:flutter/material.dart';

import '../subscription_model.dart';
import 'selected_subscription_card.dart';
import 'subscription_card_chip.dart';
import 'unselected_subscription_card.dart';

class SubscriptionCard extends StatelessWidget {
  final SubscriptionModel subscription;
  final int value;
  final int selectedCardValue;
  final Function(int) onTap;

  const SubscriptionCard({
    super.key,
    required this.subscription,
    required this.value,
    required this.selectedCardValue,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: () => onTap(value),
          child: AnimatedCrossFade(
            firstChild: SelectedSubscriptionCard(subscription),
            secondChild: UnselectedSubscriptionCard(subscription),
            crossFadeState: (value == selectedCardValue)
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 140),
          ),
        ),
        if (subscription.originalPrice != null)
          const Positioned(
            right: -11,
            top: -15,
            child: SubscriptionCardChip('Выгодно'),
          ),
      ],
    );
  }
}
