import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/domain/entities/cart_item.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/cart/cart_cubit.dart';
import 'package:food_delivery_app/presentation/routes/routes.dart';

class MealDetailsPage extends StatefulWidget {
  const MealDetailsPage({Key? key}) : super(key: key);

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
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    final isArabic = Localizations.localeOf(context).languageCode == "ar";
    final arabicNumber = ArabicNumbers();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20, top: 20),
          child: ListView(
            children: [
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Transform.rotate(
                          angle: isArabic ? 380 : 0,
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                          ))),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: const EdgeInsetsDirectional.only(start: 40),
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
                              meal.imageUrl,
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
                              Text(count.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      )),
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
                        isArabic ? meal.title.arabic : meal.title.english,
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
                            Text(
                                "${isArabic ? arabicNumber.convert(meal.calories.toInt()) : meal.calories.toInt()} ${AppLocalizations.of(context)!.cal}",
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
                                "${isArabic ? arabicNumber.convert(meal.deliveryTime.min.toInt()) : meal.deliveryTime.min.toInt()}-${isArabic ? arabicNumber.convert(meal.deliveryTime.max.toInt()) : meal.deliveryTime.max.toInt()} ${AppLocalizations.of(context)!.min}",
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
                alignment: AlignmentDirectional.centerStart,
                child: SizedBox(
                  width: 319,
                  height: 84,
                  child: Text(isArabic
                      ? meal.description.arabic
                      : meal.description.english),
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
                    BlocProvider.of<CartCubit>(context).addCartItem(CartItem(
                        imageUrl: meal.imageUrl,
                        id: meal.id,
                        price: meal.price,
                        quantity: count,
                        title: meal.title,
                        shortDescription: meal.shortDescription));

                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.mainScreen, (route) => false,
                        arguments: 3);
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
