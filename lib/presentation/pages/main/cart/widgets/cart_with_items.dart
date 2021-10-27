import 'package:flutter/material.dart';

import 'cart_list.dart';
import 'cart_title.dart';
import 'cart_total_price.dart';
import 'process_to_payment_button.dart';

class CartWithItems extends StatelessWidget {
  const CartWithItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: ListView(
              children: const [
                SizedBox(
                  height: 30,
                ),
                CartTitle(),
                SizedBox(
                  height: 30,
                ),
                CartList()
              ],
            ),
          ),
        ),
        const CartTotalPrice(),
        const ProcessToPaymentButton()
      ],
    );
  }
}
