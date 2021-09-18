import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
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
                  Column(
                    children: [],
                  ),
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
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: selectView,
          items: [
            BottomNavigationBarItem(
              label: "",
              activeIcon: Image.asset(
                "assets/icons/home_active.png",
                height: 24,
              ),
              icon: Image.asset(
                "assets/icons/home.png",
                height: 24,
              ),
            ),
            BottomNavigationBarItem(
                label: "Home",
                activeIcon: Image.asset(
                  "assets/icons/heart_active.png",
                  height: 24,
                ),
                icon: Image.asset(
                  "assets/icons/heart.png",
                  height: 24,
                )),
            BottomNavigationBarItem(
                label: "Home",
                activeIcon: Image.asset(
                  "assets/icons/notification_active.png",
                  height: 24,
                ),
                icon: Image.asset(
                  "assets/icons/notification.png",
                  height: 24,
                )),
            BottomNavigationBarItem(
                label: "Home",
                activeIcon: Image.asset(
                  "assets/icons/cart_active.png",
                  height: 24,
                ),
                icon: Image.asset(
                  "assets/icons/cart.png",
                  height: 24,
                ))
          ]),
    );
  }
}
