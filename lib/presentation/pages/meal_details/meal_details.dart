import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';

class MealDetailsPage extends StatelessWidget {
  const MealDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
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
                      icon: const Icon(Icons.arrow_back_ios_new)),
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
                                  onPressed: () {},
                                  icon: Icon(Icons.remove)),
                              Text("2",
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
                                  onPressed: () {},
                                  icon: Icon(Icons.add)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        meal.title.english,
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
                            Text("${meal.calories.toInt()}cal",
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
                                "${meal.deliveryTime.min.toInt()}-${meal.deliveryTime.max.toInt()} min",
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
                  child: Text(meal.description.english),
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
                  onPressed: () {},
                  child: Text(
                    " Add to cart",
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
