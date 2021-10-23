import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/addresses/addresses_cubit.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/payment/payment_cubit.dart';
import 'package:food_delivery_app/presentation/helpers/auth_helper.dart';
import 'package:food_delivery_app/presentation/pages/payment/widgets/payment_error.dart';
import 'package:food_delivery_app/presentation/pages/payment/widgets/payment_loading.dart';
import 'package:food_delivery_app/presentation/pages/payment/widgets/payment_submitted.dart';

import 'widgets/payment_submittion.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authState = context.read<AuthBloc>().state;
    final uid = authState.getUserId();
    return Scaffold(
      body: BlocProvider(
        create: (context) => PaymentCubit(
            uid: uid, addressesCubit: BlocProvider.of<AddressesCubit>(context))
          ..prepareOrder(),
        child: Builder(
          builder: (context) {
            return BlocBuilder<PaymentCubit, PaymentState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const PaymentLoading(),
                  paymentPrepared: (preorder) => PaymentSubmittion(
                    deliveryFee: preorder.deliveryFees,
                    totalPriceWithFee: preorder.totalPriceWithFees,
                    totalPriceWithoutFee: preorder.totalPrice,
                  ),
                  paymentSuccess: () => const PaymentSubmitted(),
                  failure: (failure) => const PaymentError(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
