import 'package:storetest/data/mappers/product_mapper.dart';
import 'package:storetest/data/models/favorite_model/favorite_model.dart';
import 'package:storetest/domain/entities/favorite_item_entity.dart';

extension FavoriteMapper on FavoriteModel {
  FavoriteItem toEntity() => FavoriteItem(product: product.toEntity());
}

extension FavoriteModelMapper on FavoriteItem {
  FavoriteModel toModel() => FavoriteModel(product: product.toModel());
}
