import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/cart/cart_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);
  final int index;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) => BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: onTap,
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
              icon: Stack(
                children: [
                  Image.asset(
                    "assets/icons/cart.png",
                    height: 24,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(10)),
                      child: context.read<CartCubit>().cartCount == 0
                          ? const SizedBox()
                          : Text(
                              context.read<CartCubit>().cartCount.toString(),
                              style: TextStyle(fontSize: 10),
                            )),
                ],
              ),
            )
          ]),
    );
  }
}
