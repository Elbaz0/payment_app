import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/stripe/conastant_stripe_key.dart';

Dio dio = Dio();

class StripeService {
  // make payment method :
  Future makePayment({required String amount, required String currency}) async {
    try {
      var paymentIntentClientSecret = await createPaymentIntent(
        amount: ("${amount}00"),
        currency: currency,
      );
      await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentClientSecret,
      );
      await displayPaymentSheet();
    } catch (e) {
      rethrow;
    }
  }

  // 1 - create payment intent :
  Future<String> createPaymentIntent(
      {required String amount, required String currency}) async {
    try {
      Response response = await dio.post(
        'https://api.stripe.com/v1/payment_intents',
        data: {
          'amount': amount,
          'currency': currency,
        },
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
          headers: {
            'Authorization': 'Bearer ${ConastantStripeKey.srecretKey}',
          },
        ),
      );
      return response.data['client_secret'];
    } catch (e) {
      rethrow;
    }
  }

  // 2 - create payment sheet :
  Future<void> initPaymentSheet(
      {required String paymentIntentClientSecret}) async {
    try {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntentClientSecret,
          merchantDisplayName: 'Ibrahim',
          style: ThemeMode.dark,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  // 3- display payment sheet :

  Future<void> displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
    } catch (e) {
      rethrow;
    }
  }
}
