import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import 'bottom_nav_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) => AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Card(
          color: Theme.of(context).colorScheme.surface,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: IconButton(
            onPressed: () {
              ZoomDrawer.of(context)!.open();
            },
            icon: Image.asset(
              "assets/icons/drawer_icon.png",
              height: 24,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
      routes: const [Home(), Favorite(), Cart()],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex);
      },
    );
  }
}
