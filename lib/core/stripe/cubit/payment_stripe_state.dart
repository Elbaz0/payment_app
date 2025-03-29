part of 'payment_stripe_cubit.dart';

@immutable
sealed class PaymentStripeState {}

final class PaymentStripeInitial extends PaymentStripeState {}

final class PaymentStripeLoading extends PaymentStripeState {}

final class PaymentStripeError extends PaymentStripeState {
  final String errorMessage;
  PaymentStripeError({required this.errorMessage});
}

final class PaymentStripeSuccess extends PaymentStripeState {}
