import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartListItem extends StatelessWidget {
  const CartListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      secondaryActions: [
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Image.asset(
              "assets/icons/edite.png",
              height: 40,
            )),
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Image.asset(
              "assets/icons/delete.png",
              height: 40,
            )),
      ],
      actionPane: SlidableScrollActionPane(),
      actionExtentRatio: 0.18,
      child: SizedBox(
          height: 112,
          child: Card(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/images/burger_sample.png",
                        height: 68,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("The Macdonalds"),
                        const Spacer(),
                        Text("Classic cheesburger"),
                        const Spacer(),
                        Text("23.99"),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Theme.of(context).colorScheme.primary,
                              child: Icon(
                                Icons.remove,
                                color: Theme.of(context).colorScheme.onPrimary,
                              )),
                          color: Colors.red,
                        ),
                        Text("2"),
                        IconButton(
                          onPressed: () {},
                          icon: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Theme.of(context).colorScheme.primary,
                              child: Icon(
                                Icons.add,
                                color: Theme.of(context).colorScheme.onPrimary,
                              )),
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                )),
          )),
    );
  }
}
