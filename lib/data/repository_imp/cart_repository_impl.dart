import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:storetest/data/data_sources/local_storage_service.dart';
import 'package:storetest/data/models/card_item_model/cart_item_model.dart';
import 'package:storetest/data/mappers/cart_item_mapper.dart';
import 'package:storetest/domain/entities/cart_item_entity.dart';
import 'package:storetest/domain/repository/cart_repository.dart';

@LazySingleton(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  final LocalStorageService storage;

  CartRepositoryImpl(this.storage);

  static const String key = 'cart_items';

  @override
  Future<List<CartItem>> getCartItems() async {
    final data = storage.getStringList(key);

    return data
        .map((e) => CartItemModel.fromJson(jsonDecode(e)).toEntity())
        .toList();
  }

  @override
  Future<void> saveCartItems(List<CartItem> items) async {
    final encoded = items
        .map((item) => jsonEncode(item.toModel().toJson()))
        .toList();

    await storage.saveStringList(key, encoded);
  }
}
