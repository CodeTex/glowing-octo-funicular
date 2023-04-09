import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
}

final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text("RichBrewz"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Align(
              alignment: Alignment.center,
              child: Text("RichBrewz"),
            )
          ],
        ),
      ),
    ),
  ],
  errorBuilder: (context, state) => const Scaffold(),
);
