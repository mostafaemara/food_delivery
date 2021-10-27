import 'package:flutter/material.dart';

class PaymentLoading extends StatelessWidget {
  const PaymentLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
