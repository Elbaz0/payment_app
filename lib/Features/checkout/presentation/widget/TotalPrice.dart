import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Total',
          style: Styles.style24,
        ),
        Spacer(),
        Text(
          '\$50.97',
          style: Styles.style24,
        ),
      ],
    );
  }
}
