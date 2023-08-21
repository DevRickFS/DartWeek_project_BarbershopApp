
import 'package:asyncstate/widget/async_state_builder.dart';
import 'package:dw_babershop/src/core/ui/barbershop_theme.dart';
import 'package:dw_babershop/src/features/auth/login/login_page.dart';
import 'package:dw_babershop/src/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'core/ui/widgets/barbershop_loader.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const BarbershopLoader(),
      builder: (asyncNavigatorObserver){
        return MaterialApp(
        theme: BarbershopTheme.themeData,
        debugShowCheckedModeBanner: false,
        navigatorObservers: [asyncNavigatorObserver],
        title: 'DW Barbershop',
        routes: {
          '/': (_) => const SplashPage(),
          '/auth/login':(_) => const LoginPage(),
        },
      );
    });
  }
}