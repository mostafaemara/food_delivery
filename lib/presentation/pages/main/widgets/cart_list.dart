import 'package:flutter/material.dart';

import 'cart_list_item.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...List.generate(3, (index) => CartListItem())],
    );
  }
}
