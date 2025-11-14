import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:storetest/data/data_sources/local_storage_service.dart';
import 'package:storetest/data/mappers/product_mapper.dart';
import 'package:storetest/data/models/product_model/product_model.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/domain/repository/favorites_repository.dart';

@LazySingleton(as: FavoritesRepository)
class FavoritesRepositoryImpl implements FavoritesRepository {
  final LocalStorageService storage;

  FavoritesRepositoryImpl(this.storage);

  static const String key = 'favorites';

  @override
  Future<List<ProductItem>> getFavorites() async {
    final list = storage.getStringList(key);

    return list
        .map((e) => ProductModel.fromJson(jsonDecode(e)).toEntity())
        .toList();
  }

  @override
  Future<void> saveFavorites(List<ProductItem> favorites) async {
    final encoded = favorites
        .map((p) => jsonEncode(p.toModel().toJson()))
        .toList();

    await storage.saveStringList(key, encoded);
  }
}
