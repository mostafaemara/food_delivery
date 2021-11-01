import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/domain/entities/order.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/payment_repository.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../injection.dart';

part 'orders_state.dart';
part 'orders_cubit.freezed.dart';

class OrdersCubit extends Cubit<OrdersState> {
  final AuthBloc _auth;
  final paymentRepo = locator<PaymentRepository>();
  OrdersCubit(this._auth) : super(const OrdersState.initial());

  void getOrder() {
    _auth.state.maybeWhen(
      authenticated: (user) async {
        emit(const OrdersState.loading());

        final result = await paymentRepo.getOrgers(user.id);
        result.fold((failure) => emit(OrdersState.failure(failure: failure)),
            (orders) => emit(OrdersState.loaded(orders: orders)));
      },
      orElse: () => null,
    );
  }
}
