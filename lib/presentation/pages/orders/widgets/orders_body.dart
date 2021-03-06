import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/orders/orders_cubit.dart';
import 'package:food_delivery_app/presentation/pages/orders/widgets/empty_orders.dart';
import 'package:food_delivery_app/presentation/widgets/server_error.dart';
import 'package:food_delivery_app/presentation/pages/orders/widgets/orders_list.dart';

import 'package:intl/date_symbol_data_local.dart';
import 'package:food_delivery_app/presentation/pages/orders/widgets/orders_loading.dart';

class OrdersBody extends StatefulWidget {
  const OrdersBody({Key? key}) : super(key: key);

  @override
  State<OrdersBody> createState() => _OrdersBodyState();
}

class _OrdersBodyState extends State<OrdersBody> {
  @override
  void didChangeDependencies() {
    context.read<OrdersCubit>().getOrder();
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<OrdersCubit, OrdersState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const OrdersLoading(),
            loaded: (orders) => orders.isEmpty
                ? const EmptyOrders()
                : OrdersList(orders: orders),
            failure: (failure) => const ServerError(),
          );
        },
      ),
    );
  }
}
