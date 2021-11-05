import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/domain/entities/order.dart';
import 'package:food_delivery_app/presentation/helpers/translators.dart';
import 'package:provider/provider.dart';

class OrderItemsTable extends StatelessWidget {
  const OrderItemsTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final order = context.read<Order>();
    final width = MediaQuery.of(context).size.width - 40;
    return DataTable(
      horizontalMargin: 0,
      dataRowHeight: 50,
      columnSpacing: 10,
      columns: [
        DataColumn(
          label: Text(AppLocalizations.of(context)!.itemName),
        ),
        DataColumn(label: Text(AppLocalizations.of(context)!.quantity)),
        DataColumn(label: Text(AppLocalizations.of(context)!.itemPrice)),
        DataColumn(label: Text(AppLocalizations.of(context)!.totalPrice)),
      ],
      rows: [
        ...List.generate(
            order.items.length,
            (index) => DataRow(cells: [
                  DataCell(Container(
                    alignment: Alignment.center,
                    width: width * 0.25,
                    child: Text(
                      order.items[index].title.translate(
                        context,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
                  DataCell(Container(
                      alignment: Alignment.center,
                      width: width * 0.2,
                      child: Text(
                          order.items[index].quantity.translate(context)))),
                  DataCell(Container(
                      alignment: Alignment.center,
                      width: width * 0.2,
                      child: Text(
                          "${order.items[index].price.translate(context)} ${AppLocalizations.of(context)!.egp}"))),
                  DataCell(Container(
                      alignment: Alignment.center,
                      width: width * 0.2,
                      child: Text(
                          "${order.items[index].totalPrice.translate(context)} ${AppLocalizations.of(context)!.egp}")))
                ])).toList()
      ],
    );
  }
}
