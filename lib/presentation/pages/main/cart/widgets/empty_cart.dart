import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "package:auto_route/auto_route.dart";
import 'package:food_delivery_app/presentation/routes/router.gr.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Column(
            children: [
              Image.asset(
                "assets/images/empty_cart.png",
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  AppLocalizations.of(context)!.yourCartIsEmpty,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
                onPressed: () {
                  context.navigateNamedTo("/home");
                },
                child: Text(AppLocalizations.of(context)!.startOrdering)),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
