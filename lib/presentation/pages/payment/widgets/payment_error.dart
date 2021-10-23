import 'package:flutter/material.dart';

class PaymentError extends StatelessWidget {
  const PaymentError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text("Somthing Went Wrong"),
    ));
  }
}
