import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.price, required this.title});
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.style20,
        ),
        const Spacer(),
        Text(
          price,
          style: Styles.style20,
        ),
      ],
    );
  }
}
