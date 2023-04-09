import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:richbrewz/src/router/routing.dart';
import 'package:richbrewz/src/theme/coffee.dart';

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
        primarySwatch: coffee,
        fontFamily: GoogleFonts.quicksand().fontFamily,
        appBarTheme: AppBarTheme(
          backgroundColor: coffee.shade900,
          foregroundColor: coffee.shade100,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: coffee.shade900,
            foregroundColor: coffee.shade100,
          ),
        ),
      ),
    );
  }
}
