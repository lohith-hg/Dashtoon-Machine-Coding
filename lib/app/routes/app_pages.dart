import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      participatesInRootNavigator: true,
      name: '/',
      page: () => GetRouterOutlet.builder(
        builder: (BuildContext context, GetDelegate delegate,
            GetNavConfig? current) {
          return GetRouterOutlet(
            initialRoute: _Paths.HOME,
          );
        },
      ),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
      ],
    ),
  ];
}
