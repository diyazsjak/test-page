import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../subscription_model.dart';
import 'subscription_card_header.dart';
import 'subscription_details_list.dart';

class SelectedSubscriptionCard extends StatelessWidget {
  final SubscriptionModel subscription;

  const SelectedSubscriptionCard(this.subscription, {super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _BorderGradientPainter(29),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.specialContainer,
          borderRadius: BorderRadius.circular(29),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 26),
              child: SubscriptionCardHeader(
                subscription: subscription,
                isSelected: true,
              ),
            ),
            const SizedBox(height: 9),
            SubscriptionDetailsList(subscription.detailsList),
            const SizedBox(height: 27),
          ],
        ),
      ),
    );
  }
}

class _BorderGradientPainter extends CustomPainter {
  final Paint paintObject = Paint();
  final double borderRadius;

  _BorderGradientPainter(this.borderRadius);

  @override
  void paint(Canvas canvas, Size size) {
    const strokeWidth = 1.0;
    final outerRect = Offset.zero & size;
    final innerRect = Rect.fromLTRB(
      strokeWidth,
      strokeWidth,
      size.width - strokeWidth * 2,
      size.height - strokeWidth,
    );

    final outerRoundedRect = RRect.fromRectAndRadius(
      outerRect,
      Radius.circular(borderRadius),
    );
    final innerRoundedRect = RRect.fromRectAndRadius(
      innerRect,
      Radius.circular(borderRadius - 2),
    );

    const gradient = LinearGradient(colors: AppColors.borderGradient);

    paintObject.shader = gradient.createShader(outerRect);
    final borderPath = _calculateBorderPath(outerRoundedRect, innerRoundedRect);

    canvas.drawPath(borderPath, paintObject);
  }

  Path _calculateBorderPath(RRect outerRect, RRect innerRect) {
    final outerRectPath = Path()..addRRect(outerRect);
    final innerRectPath = Path()..addRRect(innerRect);

    return Path.combine(PathOperation.difference, outerRectPath, innerRectPath);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
