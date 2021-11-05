import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/pages/order_details/widgets/order_footer.dart';

import 'package:food_delivery_app/presentation/pages/order_details/widgets/order_header.dart';
import 'package:food_delivery_app/presentation/pages/order_details/widgets/order_items_table.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  OrderHeader(),
                  Divider(),
                  OrderItemsTable(),
                  Divider(),
                  OrderFooter()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
