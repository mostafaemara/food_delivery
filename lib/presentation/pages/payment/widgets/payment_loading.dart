import 'package:flutter/material.dart';

class PaymentLoading extends StatelessWidget {
  const PaymentLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text("Loading..."),
    ));
  }
}
