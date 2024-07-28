import 'package:flutter/material.dart';
import 'package:payment_app/Features/checkout/presentation/widget/PaymentItem.dart';

class ListItemMethod extends StatelessWidget {
  const ListItemMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PaymentItem(
            isActive: true,
            image: 'assets/images/card.svg',
          ),
          PaymentItem(
            isActive: false,
            image: 'assets/images/paypal.svg',
          ),
        ],
      ),
    );
  }
}
