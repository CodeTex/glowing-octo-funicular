import 'package:flutter/material.dart';
import 'package:richbrewz/src/constants/sizes.dart';
import 'package:richbrewz/src/features/products/models/products.dart';

/// Used to show a single product inside a card.
class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product, this.onPressed});
  final Product product;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 128,
                backgroundImage: AssetImage('images/${product.imageUrl}'),
              ),
              gapH8,
              const Divider(),
              gapH8,
              Text(
                product.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              gapH16,
              Row(
                children: [
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.add),
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.remove),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
