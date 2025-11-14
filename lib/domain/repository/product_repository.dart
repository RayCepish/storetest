import 'package:storetest/domain/entities/product_item_entity.dart';

abstract class ProductRepository {
  Future<List<ProductItem>> getAllProducts();

  Future<List<ProductItem>> searchProducts(String query);
}
