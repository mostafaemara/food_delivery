// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

import '../../domain/entities/meal.dart' as _i18;
import '../pages/add_new_address/new_address_page.dart' as _i10;
import '../pages/addresses/addresses_page.dart' as _i11;
import '../pages/category/category.dart' as _i9;
import '../pages/language_selection/language_selection.dart' as _i8;
import '../pages/login/login_page.dart' as _i3;
import '../pages/main/cart/cart.dart' as _i15;
import '../pages/main/favorites/favorite.dart' as _i14;
import '../pages/main/home/home.dart' as _i13;
import '../pages/main/main.dart' as _i2;
import '../pages/meal_details/meal_details.dart' as _i7;
import '../pages/onboard/onboard.dart' as _i6;
import '../pages/payment/payment_page.dart' as _i12;
import '../pages/setting/setting_page.dart' as _i5;
import '../pages/signup/signup_page.dart' as _i4;
import '../pages/splash/splash.dart' as _i1;

class AppRouter extends _i16.RootStackRouter {
  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    MainRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.MainPage());
    },
    LoginRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginPage());
    },
    SignupRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignupPage());
    },
    SettingRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingPage());
    },
    OnBoardRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.OnBoardPage());
    },
    MealDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MealDetailsRouteArgs>();
      return _i16.MaterialPageX<bool>(
          routeData: routeData,
          child: _i7.MealDetailsPage(key: args.key, meal: args.meal));
    },
    LanguageSelectionRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LanguageSelectionPage());
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.CategoryPage(key: args.key, categoryId: args.categoryId));
    },
    NewAddressRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.NewAddressPage());
    },
    AddressesRoute.name: (routeData) {
      final args = routeData.argsAs<AddressesRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.AddressesPage(
              key: args.key,
              isSelectionModeActive: args.isSelectionModeActive));
    },
    PaymentRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.PaymentPage());
    },
    Home.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Home());
    },
    Favorite.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.Favorite());
    },
    Cart.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.Cart());
    }
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(SplashRoute.name, path: '/'),
        _i16.RouteConfig(MainRoute.name, path: '/', children: [
          _i16.RouteConfig('#redirect',
              path: '',
              parent: MainRoute.name,
              redirectTo: 'home',
              fullMatch: true),
          _i16.RouteConfig(Home.name, path: 'home', parent: MainRoute.name),
          _i16.RouteConfig(Favorite.name,
              path: 'favorites', parent: MainRoute.name),
          _i16.RouteConfig(Cart.name, path: 'cart', parent: MainRoute.name)
        ]),
        _i16.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i16.RouteConfig(SignupRoute.name, path: '/signup-page'),
        _i16.RouteConfig(SettingRoute.name, path: '/setting-page'),
        _i16.RouteConfig(OnBoardRoute.name, path: '/on-board-page'),
        _i16.RouteConfig(MealDetailsRoute.name, path: '/meal-details-page'),
        _i16.RouteConfig(LanguageSelectionRoute.name,
            path: '/language-selection-page'),
        _i16.RouteConfig(CategoryRoute.name, path: '/category-page'),
        _i16.RouteConfig(NewAddressRoute.name, path: '/new-address-page'),
        _i16.RouteConfig(AddressesRoute.name, path: '/addresses-page'),
        _i16.RouteConfig(PaymentRoute.name, path: '/payment-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.MainPage]
class MainRoute extends _i16.PageRouteInfo<void> {
  const MainRoute({List<_i16.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for [_i3.LoginPage]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for [_i4.SignupPage]
class SignupRoute extends _i16.PageRouteInfo<void> {
  const SignupRoute() : super(name, path: '/signup-page');

  static const String name = 'SignupRoute';
}

/// generated route for [_i5.SettingPage]
class SettingRoute extends _i16.PageRouteInfo<void> {
  const SettingRoute() : super(name, path: '/setting-page');

  static const String name = 'SettingRoute';
}

/// generated route for [_i6.OnBoardPage]
class OnBoardRoute extends _i16.PageRouteInfo<void> {
  const OnBoardRoute() : super(name, path: '/on-board-page');

  static const String name = 'OnBoardRoute';
}

/// generated route for [_i7.MealDetailsPage]
class MealDetailsRoute extends _i16.PageRouteInfo<MealDetailsRouteArgs> {
  MealDetailsRoute({_i17.Key? key, required _i18.Meal meal})
      : super(name,
            path: '/meal-details-page',
            args: MealDetailsRouteArgs(key: key, meal: meal));

  static const String name = 'MealDetailsRoute';
}

class MealDetailsRouteArgs {
  const MealDetailsRouteArgs({this.key, required this.meal});

  final _i17.Key? key;

  final _i18.Meal meal;
}

/// generated route for [_i8.LanguageSelectionPage]
class LanguageSelectionRoute extends _i16.PageRouteInfo<void> {
  const LanguageSelectionRoute()
      : super(name, path: '/language-selection-page');

  static const String name = 'LanguageSelectionRoute';
}

/// generated route for [_i9.CategoryPage]
class CategoryRoute extends _i16.PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({_i17.Key? key, required String categoryId})
      : super(name,
            path: '/category-page',
            args: CategoryRouteArgs(key: key, categoryId: categoryId));

  static const String name = 'CategoryRoute';
}

class CategoryRouteArgs {
  const CategoryRouteArgs({this.key, required this.categoryId});

  final _i17.Key? key;

  final String categoryId;
}

/// generated route for [_i10.NewAddressPage]
class NewAddressRoute extends _i16.PageRouteInfo<void> {
  const NewAddressRoute() : super(name, path: '/new-address-page');

  static const String name = 'NewAddressRoute';
}

/// generated route for [_i11.AddressesPage]
class AddressesRoute extends _i16.PageRouteInfo<AddressesRouteArgs> {
  AddressesRoute({_i17.Key? key, required bool isSelectionModeActive})
      : super(name,
            path: '/addresses-page',
            args: AddressesRouteArgs(
                key: key, isSelectionModeActive: isSelectionModeActive));

  static const String name = 'AddressesRoute';
}

class AddressesRouteArgs {
  const AddressesRouteArgs({this.key, required this.isSelectionModeActive});

  final _i17.Key? key;

  final bool isSelectionModeActive;
}

/// generated route for [_i12.PaymentPage]
class PaymentRoute extends _i16.PageRouteInfo<void> {
  const PaymentRoute() : super(name, path: '/payment-page');

  static const String name = 'PaymentRoute';
}

/// generated route for [_i13.Home]
class Home extends _i16.PageRouteInfo<void> {
  const Home() : super(name, path: 'home');

  static const String name = 'Home';
}

/// generated route for [_i14.Favorite]
class Favorite extends _i16.PageRouteInfo<void> {
  const Favorite() : super(name, path: 'favorites');

  static const String name = 'Favorite';
}

/// generated route for [_i15.Cart]
class Cart extends _i16.PageRouteInfo<void> {
  const Cart() : super(name, path: 'cart');

  static const String name = 'Cart';
}
