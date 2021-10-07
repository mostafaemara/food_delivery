import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/favorites/favorites_cubit.dart';
import 'package:food_delivery_app/presentation/pages/main/widgets/guest_main_menu.dart';

import 'widgets/user_main_menu.dart';
import 'widgets/main_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ZoomDrawer(
            isRtl: Directionality.of(context) == TextDirection.rtl,
            controller: _drawerController,
            menuScreen: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) => state.when(
                authenticated: (user) => const UserMainMenu(),
                unAuthenticated: () => const GuestMainMenu(),
              ),
            ),
            mainScreen: const MainBody(),
            borderRadius: 24.0,
            showShadow: true,
            angle: -8,
            style: DrawerStyle.Style1,
            backgroundColor: Colors.white,
            slideWidth: MediaQuery.of(context).size.width *
                (Directionality.of(context) == TextDirection.rtl
                    ? 0.45
                    : 0.65)),
      ),
    );
  }
}
