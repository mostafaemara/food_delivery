import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/application/bloc/auth/auth_bloc.dart';

import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import 'cart_icon_with_count.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);
  final int currentIndex;
  final Function(int) onTap;

  final favoriteIndex = 1;
  final cartIndex = 3;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (selectedIndex) {
          if (selectedIndex == favoriteIndex || selectedIndex == cartIndex) {
            BlocProvider.of<AuthBloc>(context).state.when(
              authenticated: (user) {
                onTap(selectedIndex);
              },
              unAuthenticated: () {
                context.navigateTo(const LoginRoute());
              },
            );
          } else {
            onTap(selectedIndex);
          }
        },
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
            icon: const CartIconWithCount(),
          )
        ]);
  }
}
