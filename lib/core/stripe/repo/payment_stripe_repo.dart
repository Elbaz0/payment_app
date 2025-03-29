import 'package:dartz/dartz.dart';
import 'package:payment_app/core/stripe/error.dart';
import 'package:payment_app/core/stripe/stripe_service.dart';

class PaymentStripeRepo {
  final StripeService stripeService = StripeService();
  Future<Either<Failure, void>> makePayment(
      {required String amount, required String currency}) async {
    try {
      await stripeService.makePayment(
        amount: amount,
        currency: currency,
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerError(errorMessage: e.toString()));
    }
  }
}
