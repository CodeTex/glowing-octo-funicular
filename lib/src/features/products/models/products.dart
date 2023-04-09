import 'package:uuid/uuid.dart';

typedef ProductID = String;

class Product {
  final ProductID id = const Uuid().v1();
  final String title;
  final String? imageUrl;
  String? description;

  Product({
    required this.title,
    required this.imageUrl,
    String? description,
  });
}
