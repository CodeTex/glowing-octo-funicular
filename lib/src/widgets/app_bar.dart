import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:richbrewz/src/router/routing.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("RichBrewz"),
      actions: [
        IconButton(
          onPressed: () => context.pushNamed(AppRoute.products.name),
          icon: const Icon(Icons.coffee),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
