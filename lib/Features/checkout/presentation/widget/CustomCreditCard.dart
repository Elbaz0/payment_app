import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CostemCreditCard extends StatefulWidget {
  const CostemCreditCard({super.key});

  @override
  State<CostemCreditCard> createState() => _CostemCreditCardState();
}

class _CostemCreditCardState extends State<CostemCreditCard> {
  String cardHolderName = '', cardNumber = '', cvvCode = '', expiryDate = '';

  bool showBackView = false;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          CreditCardWidget(
            cardHolderName: cardHolderName,
            cardNumber: cardNumber,
            cvvCode: cvvCode,
            expiryDate: expiryDate,
            showBackView: showBackView,
            isHolderNameVisible: true,
            onCreditCardWidgetChange: (data) {},
          ),
          CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (CreditCardModel) {
                cardNumber = CreditCardModel.cardNumber;
                cardHolderName = CreditCardModel.cardHolderName;
                cvvCode = CreditCardModel.cvvCode;
                expiryDate = CreditCardModel.expiryDate;
                showBackView = CreditCardModel.isCvvFocused;
                setState(() {});
              },
              formKey: formKey)
        ],
      ),
    );
  }
}
