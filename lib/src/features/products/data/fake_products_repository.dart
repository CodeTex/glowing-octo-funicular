import 'package:richbrewz/src/constants/test_products.dart';
import 'package:richbrewz/src/features/products/models/products.dart';

class FakeProductsRepository {
  FakeProductsRepository._();
  static FakeProductsRepository instance = FakeProductsRepository._();

  List<Product> getProducts() {
    return kProducts;
  }

  Product? getProduct(ProductID id) {
    return kProducts.firstWhere((element) => element.id == id);
  }
}
