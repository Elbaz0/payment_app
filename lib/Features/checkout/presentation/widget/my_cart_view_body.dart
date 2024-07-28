import 'package:flutter/material.dart';
import 'package:payment_app/Features/checkout/presentation/widget/CustomBottom.dart';
import 'package:payment_app/Features/checkout/presentation/widget/OrderInfoItem.dart';
import 'package:payment_app/Features/checkout/presentation/widget/TotalPrice.dart';

class my_cart_view_body extends StatelessWidget {
  const my_cart_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Image(
            image: AssetImage('assets/images/basket.png'),
          ),
          SizedBox(
            height: 25,
          ),
          OrderInfoItem(price: '\$42.97', title: 'Order Subtotal'),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(price: '\$0', title: 'Discount'),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(price: '\$8', title: 'Shipping'),
          Divider(
            color: Color(0xFFC6C6C6),
            height: 30,
            indent: 15,
            endIndent: 15,
            thickness: 3,
          ),
          SizedBox(
            height: 15,
          ),
          TotalPrice(),
          SizedBox(
            height: 16,
          ),
          CustomBottom(
            title: 'Complete Payment',
          ),
        ],
      ),
    );
  }
}
