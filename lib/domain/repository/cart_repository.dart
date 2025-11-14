import 'package:storetest/domain/entities/cart_item_entity.dart';

abstract class CartRepository {
  Future<List<CartItem>> getCartItems();

  Future<void> saveCartItems(List<CartItem> items);
}
