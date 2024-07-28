import 'package:flutter/material.dart';

import 'package:payment_app/Features/checkout/presentation/widget/my_cart_view_body.dart';

import 'package:payment_app/core/widget/AppBarMethod.dart';

class myCart_view extends StatelessWidget {
  const myCart_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMethod(
        title: 'My Cart',
      ),
      body: const my_cart_view_body(),
    );
  }
}
