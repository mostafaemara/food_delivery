import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/widgets/main_menu.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/widgets/main_screen_body.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ZoomDrawer(
            isRtl: Directionality.of(context) == TextDirection.rtl,
            controller: _drawerController,
            menuScreen: const MainMenu(),
            mainScreen: const MainScreenBody(),
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
