import 'package:flutter/material.dart';
import 'package:payment_app/Features/checkout/presentation/views/PaymentDetails.dart';
import 'package:payment_app/core/widget/CustomBottom.dart';
import 'package:payment_app/Features/checkout/presentation/widget/OrderInfoItem.dart';
import 'package:payment_app/Features/checkout/presentation/widget/TotalPrice.dart';

class my_cart_view_body extends StatelessWidget {
  const my_cart_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Expanded(
            child: Image(
              image: AssetImage('assets/images/basket.png'),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(price: '\$42.97', title: 'Order Subtotal'),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(price: '\$0', title: 'Discount'),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(price: '\$8', title: 'Shipping'),
          const Divider(
            color: Color(0xFFC6C6C6),
            height: 30,
            indent: 15,
            endIndent: 15,
            thickness: 3,
          ),
          const SizedBox(
            height: 15,
          ),
          const TotalPrice(),
          const SizedBox(
            height: 16,
          ),
          CustomBottom(
            title: 'Complete Payment',
            onTap: () {
              // ScaffoldMessenger.of(context)
              //     .showSnackBar(SnackBar(content: Text('data')));
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PaymentDetails();
              }));
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
