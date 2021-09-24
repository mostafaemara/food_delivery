import 'package:flutter/material.dart';

import 'cart_list.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Your Cart",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const CartList()
          ],
        ),
      ),
    );
  }
}
