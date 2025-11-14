import 'package:storetest/data/mappers/product_mapper.dart';
import 'package:storetest/data/models/card_item_model/cart_item_model.dart';
import 'package:storetest/domain/entities/cart_item_entity.dart';

extension CartItemMapper on CartItemModel {
  CartItem toEntity() =>
      CartItem(product: product.toEntity(), quantity: quantity);
}

extension CartItemModelMapper on CartItem {
  CartItemModel toModel() =>
      CartItemModel(product: product.toModel(), quantity: quantity);
}
