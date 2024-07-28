import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.isActive, required this.image});
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1.50,
              color: isActive
                  ? Color(0xFF34A853)
                  : Color.fromARGB(255, 108, 108, 108)),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive
                ? Color(0xFF34A853)
                : Color.fromARGB(255, 255, 252, 252),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: SvgPicture.asset(
            image,
          ),
        ),
      ),
    );
  }
}
