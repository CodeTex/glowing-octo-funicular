import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:richbrewz/src/features/products/views/screen.dart';
import 'package:richbrewz/src/widgets/app_bar.dart';

enum AppRoute {
  home,
  products,
}

final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'products',
          name: AppRoute.products.name,
          builder: (context, state) => const ProductsListScreen(),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const Scaffold(),
);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Align(
            alignment: Alignment.center,
            child: Text("RichBrewz"),
          )
        ],
      ),
    );
  }
}
