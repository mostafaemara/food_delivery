import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      onPressed: () {},
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
                            child: Image.asset(
                              "assets/images/burger_sample.png",
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
                        "Big boys Cheese burger",
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
                              "assets/icons/star.png",
                              height: 15,
                              width: 15,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text("4+",
                                style: Theme.of(context).textTheme.caption),
                            const Spacer(),
                            Image.asset(
                              "assets/icons/fire.png",
                              height: 15,
                              width: 15,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text("300cal",
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
                            Text("5-10min",
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
                child: const SizedBox(
                  width: 319,
                  height: 84,
                  child: Text(
                      "Our simple, classic cheeseburger begins with a 100% pure beef burger seasoned with just a pinch of salt and pepper. The McDonald’s Cheeseburger is topped"),
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
                      fixedSize: MaterialStateProperty.all(Size(335, 51))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
