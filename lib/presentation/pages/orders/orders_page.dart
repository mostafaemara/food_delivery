import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/orders/orders_cubit.dart';
import 'package:food_delivery_app/presentation/pages/orders/widgets/orders_body.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OrdersCubit(BlocProvider.of<AuthBloc>(context)),
        child: const OrdersBody(),
      ),
    );
  }
}
