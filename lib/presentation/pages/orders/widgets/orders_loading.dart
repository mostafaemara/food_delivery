import 'package:flutter/material.dart';

class OrdersLoading extends StatelessWidget {
  const OrdersLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
