import 'package:flutter/material.dart';
import 'package:richbrewz/src/router/routing.dart';

class RoutedApp extends StatelessWidget {
  const RoutedApp({super.key, this.initialRoute, this.isTestMode = false});

  final String? initialRoute;
  final bool isTestMode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      routerConfig: router,
      // onGenerateTitle: (BuildContext context) => 'Saitenstecher'.hardcoded,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
