import 'package:flutter/material.dart';
import 'package:payment_app/Features/checkout/presentation/widget/ListItemMethod.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 15,
        ),
        ListItemMethod(),
      ],
    );
  }
}
