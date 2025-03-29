import 'package:flutter/material.dart';
import 'package:payment_app/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:payment_app/core/stripe/conastant_stripe_key.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey = ConastantStripeKey.publishableKey;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
