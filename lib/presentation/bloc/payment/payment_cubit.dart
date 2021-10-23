import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/domain/entities/payment_method.dart';
import 'package:food_delivery_app/domain/entities/preorder.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/payment_repository.dart';
import 'package:food_delivery_app/presentation/bloc/addresses/addresses_cubit.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../injection.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final paymentRepo = locator<PaymentRepository>();
  final String uid;
  final AddressesCubit addressesCubit;
  PaymentCubit({required this.uid, required this.addressesCubit})
      : super(const PaymentState.initial());

  void prepareOrder() async {
    emit(const PaymentState.loading());
    final result = await paymentRepo.prepareOrder(uid);

    result.fold((failure) => emit(PaymentState.failure(failure: failure)),
        (preorder) => emit(PaymentState.paymentPrepared(preorder: preorder)));
  }

  void submitPayment() {
    addressesCubit.state.selectedAddress.fold(() => null, (addressId) async {
      emit(const PaymentState.loading());
      final result = await paymentRepo.submitPayment(
          uid: uid,
          paymentMethod: const PaymentMethod.cashOnDelivery(),
          addressId: addressId);

      result.fold((failure) => emit(PaymentState.failure(failure: failure)),
          (orderId) => emit(const PaymentState.paymentSuccess()));
    });
  }
}
