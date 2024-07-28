import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          title,
          style: Styles.style22,
        ),
      ),
      width: 350,
      height: 73,
      decoration: ShapeDecoration(
        color: Color(0xFF34A853),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
