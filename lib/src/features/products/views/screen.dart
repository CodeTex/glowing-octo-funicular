import 'package:flutter/material.dart';
import 'package:richbrewz/src/constants/sizes.dart';
import 'package:richbrewz/src/features/products/views/grid.dart';
import 'package:richbrewz/src/widgets/app_bar.dart';
import 'package:richbrewz/src/widgets/responsive_center.dart';

class ProductsListScreen extends StatefulWidget {
  const ProductsListScreen({super.key});

  @override
  State<ProductsListScreen> createState() => _ProductsListScreenState();
}

class _ProductsListScreenState extends State<ProductsListScreen> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: const [
          ResponsiveSliverCenter(
            padding: EdgeInsets.all(Sizes.p16),
            child: ProductsGrid(),
          ),
        ],
      ),
    );
  }
}
