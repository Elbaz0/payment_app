import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:payment_app/core/stripe/repo/payment_stripe_repo.dart';

part 'payment_stripe_state.dart';

class PaymentStripeCubit extends Cubit<PaymentStripeState> {
  PaymentStripeCubit(this.paymentStripeRepo) : super(PaymentStripeInitial());
  final PaymentStripeRepo paymentStripeRepo;

  Future<void> makePayment(
      {required String amount, required String currency}) async {
    emit(PaymentStripeLoading());
    final result = await paymentStripeRepo.makePayment(
      amount: amount,
      currency: currency,
    );
    result.fold(
      (failure) => emit(PaymentStripeError(errorMessage: failure.errorMessage)),
      (success) => emit(PaymentStripeSuccess()),
    );
  }
}
