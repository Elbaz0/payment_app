import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/core/utils/styles.dart';

class myCart_view extends StatelessWidget {
  const myCart_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Center(child: SvgPicture.asset('assets/images/Arrow.svg')),
        title: const Text(
          textAlign: TextAlign.center,
          'My Cart',
          style: Styles.style25,
        ),
      ),
    );
  }
}
