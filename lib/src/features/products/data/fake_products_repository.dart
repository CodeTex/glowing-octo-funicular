import 'package:richbrewz/src/constants/test_products.dart';
import 'package:richbrewz/src/features/products/models/products.dart';

class FakeMemberRepository {
  FakeMemberRepository._();
  static FakeMemberRepository instance = FakeMemberRepository._();

  List<Product> getProducts() {
    return kProducts;
  }

  Product? getProduct(ProductID id) {
    return kProducts.firstWhere((element) => element.id == id);
  }
}
