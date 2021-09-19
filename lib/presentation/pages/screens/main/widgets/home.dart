import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/widgets/category_list.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/widgets/popular_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.enjoyDeliciousFood,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 150,
          child: CategoryList(),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppLocalizations.of(context)!.popular,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 60),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppLocalizations.of(context)!.viewAll,
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 260,
          child: PopularList(),
        )
      ],
    );
  }
}
