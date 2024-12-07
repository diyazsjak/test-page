import 'package:flutter/material.dart';

import '../models/subscription_model.dart';
import 'subscription_card_header.dart';

class UnselectedSubscriptionCard extends StatelessWidget {
  final SubscriptionModel subscription;

  const UnselectedSubscriptionCard(this.subscription, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF).withOpacity(0.1),
        borderRadius: BorderRadius.circular(29),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 26),
            child: SubscriptionCardHeader(
              subscription: subscription,
              isSelected: false,
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
