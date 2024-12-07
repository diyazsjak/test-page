import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../models/subscription_model.dart';
import '../widgets/blured_containers.dart';
import '../widgets/buy_subscription_button.dart';
import '../widgets/page_footer.dart';
import '../widgets/page_header.dart';
import '../widgets/subscription_card.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({super.key});

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  int _selectedCard = 1;
  final _detailsList = [
    'что входит',
    'что входит',
    'что входит',
    'что входит',
    'что входит',
  ];

  void _onCardTap(int value) {
    setState(() => _selectedCard = value);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.background,
      child: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Positioned(left: -199, top: 80, child: BlurredContainer1()),
            const Positioned(
              right: -245,
              top: 370,
              child: BlurredContainer2(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 71),
                const PageHeader(),
                const SizedBox(height: 64),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: SubscriptionCard(
                    value: 0,
                    selectedCardValue: _selectedCard,
                    onTap: _onCardTap,
                    subscription: SubscriptionModel(
                      duration: '1 месяц',
                      description: 'Описание',
                      price: '1000р',
                      detailsList: _detailsList,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: SubscriptionCard(
                    value: 1,
                    selectedCardValue: _selectedCard,
                    onTap: _onCardTap,
                    subscription: SubscriptionModel(
                      duration: '6 месяцев',
                      description: 'Описание',
                      price: '10 000р',
                      originalPrice: '12000р',
                      detailsList: _detailsList,
                    ),
                  ),
                ),
                const SizedBox(height: 21),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  child: BuySubscriptionButton(),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 27),
                  child: PageFooter(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
