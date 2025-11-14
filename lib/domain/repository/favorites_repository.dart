import 'package:storetest/domain/entities/product_item_entity.dart';

abstract class FavoritesRepository {
  Future<List<ProductItem>> getFavorites();

  Future<void> saveFavorites(List<ProductItem> favorites);
}
