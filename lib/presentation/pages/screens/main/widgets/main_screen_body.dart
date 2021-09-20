import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/widgets/bottom_nav_bar.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/widgets/cart.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/widgets/favorite.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/widgets/home.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/widgets/order.dart';

class MainScreenBody extends StatefulWidget {
  const MainScreenBody({Key? key}) : super(key: key);

  @override
  State<MainScreenBody> createState() => _MainScreenBodyState();
}

class _MainScreenBodyState extends State<MainScreenBody> {
  int index = 0;

  void selectView(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                sliver: SliverAppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  leading: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                      onPressed: () {
                        ZoomDrawer.of(context)!.open();
                      },
                      icon: Image.asset(
                        "assets/icons/drawer_icon.png",
                        height: 24,
                      ),
                    ),
                  ),
                  actions: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Theme.of(context).colorScheme.surface),
                        height: 40,
                        width: 40,
                        alignment: AlignmentDirectional.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Image.asset(
                            "assets/images/avatar.png",
                            fit: BoxFit.cover,
                            height: 24,
                          ),
                        )),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed([
                  IndexedStack(
                    index: index,
                    children: const [Home(), Favorite(), Order(), Cart()],
                  ),
                ]),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(index: index, onTap: selectView));
  }
}
