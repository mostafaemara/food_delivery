import 'package:auto_route/auto_route.dart';
import 'package:food_delivery_app/presentation/pages/add_new_address/new_address_page.dart';
import 'package:food_delivery_app/presentation/pages/addresses/addresses_page.dart';
import 'package:food_delivery_app/presentation/pages/category/category.dart';

import 'package:food_delivery_app/presentation/pages/language_selection/language_selection.dart';
import 'package:food_delivery_app/presentation/pages/login/login_page.dart';
import 'package:food_delivery_app/presentation/pages/main/cart/cart.dart';
import 'package:food_delivery_app/presentation/pages/main/favorites/favorite.dart';
import 'package:food_delivery_app/presentation/pages/main/home/home.dart';
import 'package:food_delivery_app/presentation/pages/main/main.dart';

import 'package:food_delivery_app/presentation/pages/meal_details/meal_details.dart';

import 'package:food_delivery_app/presentation/pages/onboard/onboard.dart';
import 'package:food_delivery_app/presentation/pages/orders/orders_page.dart';
import 'package:food_delivery_app/presentation/pages/payment/payment_page.dart';
import 'package:food_delivery_app/presentation/pages/setting/setting_page.dart';
import 'package:food_delivery_app/presentation/pages/signup/signup_page.dart';
import 'package:food_delivery_app/presentation/pages/splash/splash.dart';

@MaterialAutoRouter(replaceInRouteName: "Page,Route", routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: MainPage, path: "/", children: [
    AutoRoute(
      path: "home",
      initial: true,
      page: Home,
    ),
    AutoRoute(path: "favorites", page: Favorite),
    AutoRoute(
      path: "cart",
      page: Cart,
    ),
  ]),
  AutoRoute(
    page: LoginPage,
  ),
  AutoRoute(
    page: SignupPage,
  ),
  AutoRoute(page: SettingPage),
  AutoRoute(page: OnBoardPage),
  AutoRoute<bool>(
    page: MealDetailsPage,
  ),
  AutoRoute(page: LanguageSelectionPage),
  AutoRoute(page: CategoryPage),
  AutoRoute(page: NewAddressPage),
  AutoRoute(
    page: AddressesPage,
  ),
  AutoRoute(
    page: PaymentPage,
  ),
  AutoRoute(
    page: OrdersPage,
  ),
])
class $AppRouter {}
