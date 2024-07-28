import 'package:flutter/material.dart';
import 'package:payment_app/core/widget/AppBarMethod.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMethod(
        title: 'Payment Details',
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
