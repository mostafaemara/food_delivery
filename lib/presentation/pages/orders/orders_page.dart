import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/orders/orders_cubit.dart';
import 'package:food_delivery_app/presentation/pages/orders/widgets/orders_body.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/widgets/my_app_bar.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyAppBar(
              title: AppLocalizations.of(context)!.orders,
            ),
            BlocProvider(
              create: (context) =>
                  OrdersCubit(BlocProvider.of<AuthBloc>(context)),
              child: const OrdersBody(),
            ),
          ],
        ),
      ),
    );
  }
}
