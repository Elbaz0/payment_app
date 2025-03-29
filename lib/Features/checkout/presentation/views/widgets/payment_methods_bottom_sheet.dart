import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_app/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_app/Features/checkout/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:payment_app/core/stripe/cubit/payment_stripe_cubit.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 32,
          ),
          CustomButtonBlocCounsumer(),
        ],
      ),
    );
  }
}

class CustomButtonBlocCounsumer extends StatelessWidget {
  const CustomButtonBlocCounsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentStripeCubit, PaymentStripeState>(
      listenWhen: (previous, current) {
        return current is PaymentStripeError ||
            current is PaymentStripeSuccess ||
            current is PaymentStripeLoading;
      },
      buildWhen: (previous, current) {
        return current is PaymentStripeError ||
            current is PaymentStripeSuccess ||
            current is PaymentStripeLoading;
      },
      listener: (context, state) {
        if (state is PaymentStripeSuccess) {
          log('Success payment');
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return const ThankYouView();
            },
          ));
        }
        if (state is PaymentStripeError) {
          log(state.errorMessage);
          Navigator.pop(context);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return CustomButton(
          isLoading: state is PaymentStripeLoading ? true : false,
          text: 'Continue',
          onTap: () {
            context.read<PaymentStripeCubit>().makePayment(
                  amount: "100",
                  currency: "egp",
                );
          },
        );
      },
    );
  }
}
