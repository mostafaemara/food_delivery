import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/application/bloc/home/home_cubit.dart';

import 'package:food_delivery_app/presentation/pages/main/home/widgets/popular_list.dart';

import 'widgets/category_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void didChangeDependencies() {
    BlocProvider.of<HomeCubit>(context).init();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state.status == HomeStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.status == HomeStatus.error) {
          return const Center(
            child: Text("Somthing Went Wrong"),
          );
        }
        return Padding(
          padding: const EdgeInsetsDirectional.only(start: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
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
                height: 180,
                child: CategoryList(
                  categories: state.categories,
                ),
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
                child: PopularList(
                  meals: state.popularMeals,
                ),
              )
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
