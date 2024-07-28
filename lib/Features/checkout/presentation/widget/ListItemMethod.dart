import 'package:flutter/material.dart';
import 'package:payment_app/Features/checkout/presentation/widget/PaymentItem.dart';

class ListItemMethod extends StatefulWidget {
  const ListItemMethod({
    super.key,
  });

  @override
  State<ListItemMethod> createState() => _ListItemMethodState();
}

class _ListItemMethodState extends State<ListItemMethod> {
  List<String> dataImage = [
    'assets/images/card.svg',
    'assets/images/paypal.svg',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: dataImage.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: GestureDetector(
              onTap: () {
                activeIndex = index;
                setState(() {});
              },
              child: PaymentItem(
                  isActive: activeIndex == index, image: dataImage[index]),
            ),
          );
        },
      ),
    );
  }
}
