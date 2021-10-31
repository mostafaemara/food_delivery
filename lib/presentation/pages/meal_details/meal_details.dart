import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery_app/domain/entities/cart_item.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/cart/cart_cubit.dart';

import 'package:food_delivery_app/presentation/routes/router.gr.dart';
import 'package:food_delivery_app/presentation/widgets/app_back_button.dart';
import '../../helpers/translators.dart';
import '../../helpers/delivery_time_converter.dart';
import 'package:auto_route/auto_route.dart';

class MealDetailsPage extends StatefulWidget {
  const MealDetailsPage({Key? key, required this.meal}) : super(key: key);
  final Meal meal;
  @override
  State<MealDetailsPage> createState() => _MealDetailsPageState();
}

class _MealDetailsPageState extends State<MealDetailsPage> {
  int count = 1;

  void increaseCount() {
    setState(() {
      count++;
    });
  }

  void decreaseCount() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final userNotGuest = BlocProvider.of<AuthBloc>(context).state.map(
          authenticated: (value) => true,
          unAuthenticated: (value) => false,
        );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20,
            top: 20,
          ),
          child: ListView(
            children: [
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: const AppBackButton(),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  alignment: AlignmentDirectional.center,
                  width: 258,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: SizedBox(
                            width: 258,
                            height: 224,
                            child: Image.network(
                              widget.meal.imageUrl,
                              width: 229,
                              height: 150,
                            ),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 120,
                        height: 50,
                        child: Card(
                          elevation: 0,
                          color: Theme.of(context).colorScheme.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  iconSize: 21,
                                  onPressed: decreaseCount,
                                  icon: const Icon(Icons.remove)),
                              FittedBox(
                                child: Text(count.translate(context),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        )),
                              ),
                              IconButton(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  iconSize: 21,
                                  onPressed: increaseCount,
                                  icon: const Icon(Icons.add)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        widget.meal.title.translate(context),
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 258,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/fire.png",
                              height: 15,
                              width: 15,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(widget.meal.calories.translate(context),
                                style: Theme.of(context).textTheme.caption),
                            const Spacer(),
                            Image.asset(
                              "assets/icons/alarm.png",
                              height: 15,
                              width: 15,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                                "${widget.meal.deliveryTime.combineAndTranslate(context)} ${AppLocalizations.of(context)!.min}",
                                style: Theme.of(context).textTheme.caption),
                          ],
                        ),
                      )
                    ],
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: AlignmentDirectional.center,
                child: SizedBox(
                  width: 319,
                  height: 84,
                  child: Text(widget.meal.description.translate(context)),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsetsDirectional.only(
                  end: 20,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    if (userNotGuest) {
                      BlocProvider.of<CartCubit>(context).addCartItem(CartItem(
                          imageUrl: widget.meal.imageUrl,
                          id: widget.meal.id,
                          price: widget.meal.price,
                          quantity: count,
                          title: widget.meal.title,
                          shortDescription: widget.meal.shortDescription));

                      context.navigateNamedTo("/cart");
                    } else {
                      context.router.push(const LoginRoute());
                    }
                  },
                  child: Text(
                    AppLocalizations.of(context)!.addToCart,
                  ),
                  style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                      fixedSize:
                          MaterialStateProperty.all(const Size(335, 51))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
