// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

import '../../domain/entities/meal.dart' as _i20;
import '../../domain/entities/order.dart' as _i21;
import '../pages/add_new_address/new_address_page.dart' as _i10;
import '../pages/addresses/addresses_page.dart' as _i11;
import '../pages/category/category.dart' as _i9;
import '../pages/language_selection/language_selection.dart' as _i8;
import '../pages/login/login_page.dart' as _i3;
import '../pages/main/cart/cart.dart' as _i17;
import '../pages/main/favorites/favorite.dart' as _i16;
import '../pages/main/home/home.dart' as _i15;
import '../pages/main/main.dart' as _i2;
import '../pages/meal_details/meal_details.dart' as _i7;
import '../pages/onboard/onboard.dart' as _i6;
import '../pages/order_details/order_details_page.dart' as _i14;
import '../pages/orders/orders_page.dart' as _i13;
import '../pages/payment/payment_page.dart' as _i12;
import '../pages/setting/setting_page.dart' as _i5;
import '../pages/signup/signup_page.dart' as _i4;
import '../pages/splash/splash.dart' as _i1;

class AppRouter extends _i18.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    MainRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.MainPage());
    },
    LoginRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginPage());
    },
    SignupRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignupPage());
    },
    SettingRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingPage());
    },
    OnBoardRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.OnBoardPage());
    },
    MealDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MealDetailsRouteArgs>();
      return _i18.MaterialPageX<bool>(
          routeData: routeData,
          child: _i7.MealDetailsPage(key: args.key, meal: args.meal));
    },
    LanguageSelectionRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LanguageSelectionPage());
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.CategoryPage(key: args.key, categoryId: args.categoryId));
    },
    NewAddressRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.NewAddressPage());
    },
    AddressesRoute.name: (routeData) {
      final args = routeData.argsAs<AddressesRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.AddressesPage(
              key: args.key,
              isSelectionModeActive: args.isSelectionModeActive));
    },
    PaymentRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.PaymentPage());
    },
    OrdersRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.OrdersPage());
    },
    OrderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.OrderDetailsPage(key: args.key, order: args.order));
    },
    Home.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.Home());
    },
    Favorite.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.Favorite());
    },
    Cart.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.Cart());
    }
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(SplashRoute.name, path: '/'),
        _i18.RouteConfig(MainRoute.name, path: '/', children: [
          _i18.RouteConfig('#redirect',
              path: '',
              parent: MainRoute.name,
              redirectTo: 'home',
              fullMatch: true),
          _i18.RouteConfig(Home.name, path: 'home', parent: MainRoute.name),
          _i18.RouteConfig(Favorite.name,
              path: 'favorites', parent: MainRoute.name),
          _i18.RouteConfig(Cart.name, path: 'cart', parent: MainRoute.name)
        ]),
        _i18.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i18.RouteConfig(SignupRoute.name, path: '/signup-page'),
        _i18.RouteConfig(SettingRoute.name, path: '/setting-page'),
        _i18.RouteConfig(OnBoardRoute.name, path: '/on-board-page'),
        _i18.RouteConfig(MealDetailsRoute.name, path: '/meal-details-page'),
        _i18.RouteConfig(LanguageSelectionRoute.name,
            path: '/language-selection-page'),
        _i18.RouteConfig(CategoryRoute.name, path: '/category-page'),
        _i18.RouteConfig(NewAddressRoute.name, path: '/new-address-page'),
        _i18.RouteConfig(AddressesRoute.name, path: '/addresses-page'),
        _i18.RouteConfig(PaymentRoute.name, path: '/payment-page'),
        _i18.RouteConfig(OrdersRoute.name, path: '/orders-page'),
        _i18.RouteConfig(OrderDetailsRoute.name, path: '/order-details-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.MainPage]
class MainRoute extends _i18.PageRouteInfo<void> {
  const MainRoute({List<_i18.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for [_i3.LoginPage]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for [_i4.SignupPage]
class SignupRoute extends _i18.PageRouteInfo<void> {
  const SignupRoute() : super(name, path: '/signup-page');

  static const String name = 'SignupRoute';
}

/// generated route for [_i5.SettingPage]
class SettingRoute extends _i18.PageRouteInfo<void> {
  const SettingRoute() : super(name, path: '/setting-page');

  static const String name = 'SettingRoute';
}

/// generated route for [_i6.OnBoardPage]
class OnBoardRoute extends _i18.PageRouteInfo<void> {
  const OnBoardRoute() : super(name, path: '/on-board-page');

  static const String name = 'OnBoardRoute';
}

/// generated route for [_i7.MealDetailsPage]
class MealDetailsRoute extends _i18.PageRouteInfo<MealDetailsRouteArgs> {
  MealDetailsRoute({_i19.Key? key, required _i20.Meal meal})
      : super(name,
            path: '/meal-details-page',
            args: MealDetailsRouteArgs(key: key, meal: meal));

  static const String name = 'MealDetailsRoute';
}

class MealDetailsRouteArgs {
  const MealDetailsRouteArgs({this.key, required this.meal});

  final _i19.Key? key;

  final _i20.Meal meal;
}

/// generated route for [_i8.LanguageSelectionPage]
class LanguageSelectionRoute extends _i18.PageRouteInfo<void> {
  const LanguageSelectionRoute()
      : super(name, path: '/language-selection-page');

  static const String name = 'LanguageSelectionRoute';
}

/// generated route for [_i9.CategoryPage]
class CategoryRoute extends _i18.PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({_i19.Key? key, required String categoryId})
      : super(name,
            path: '/category-page',
            args: CategoryRouteArgs(key: key, categoryId: categoryId));

  static const String name = 'CategoryRoute';
}

class CategoryRouteArgs {
  const CategoryRouteArgs({this.key, required this.categoryId});

  final _i19.Key? key;

  final String categoryId;
}

/// generated route for [_i10.NewAddressPage]
class NewAddressRoute extends _i18.PageRouteInfo<void> {
  const NewAddressRoute() : super(name, path: '/new-address-page');

  static const String name = 'NewAddressRoute';
}

/// generated route for [_i11.AddressesPage]
class AddressesRoute extends _i18.PageRouteInfo<AddressesRouteArgs> {
  AddressesRoute({_i19.Key? key, required bool isSelectionModeActive})
      : super(name,
            path: '/addresses-page',
            args: AddressesRouteArgs(
                key: key, isSelectionModeActive: isSelectionModeActive));

  static const String name = 'AddressesRoute';
}

class AddressesRouteArgs {
  const AddressesRouteArgs({this.key, required this.isSelectionModeActive});

  final _i19.Key? key;

  final bool isSelectionModeActive;
}

/// generated route for [_i12.PaymentPage]
class PaymentRoute extends _i18.PageRouteInfo<void> {
  const PaymentRoute() : super(name, path: '/payment-page');

  static const String name = 'PaymentRoute';
}

/// generated route for [_i13.OrdersPage]
class OrdersRoute extends _i18.PageRouteInfo<void> {
  const OrdersRoute() : super(name, path: '/orders-page');

  static const String name = 'OrdersRoute';
}

/// generated route for [_i14.OrderDetailsPage]
class OrderDetailsRoute extends _i18.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({_i19.Key? key, required _i21.Order order})
      : super(name,
            path: '/order-details-page',
            args: OrderDetailsRouteArgs(key: key, order: order));

  static const String name = 'OrderDetailsRoute';
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({this.key, required this.order});

  final _i19.Key? key;

  final _i21.Order order;
}

/// generated route for [_i15.Home]
class Home extends _i18.PageRouteInfo<void> {
  const Home() : super(name, path: 'home');

  static const String name = 'Home';
}

/// generated route for [_i16.Favorite]
class Favorite extends _i18.PageRouteInfo<void> {
  const Favorite() : super(name, path: 'favorites');

  static const String name = 'Favorite';
}

/// generated route for [_i17.Cart]
class Cart extends _i18.PageRouteInfo<void> {
  const Cart() : super(name, path: 'cart');

  static const String name = 'Cart';
}
