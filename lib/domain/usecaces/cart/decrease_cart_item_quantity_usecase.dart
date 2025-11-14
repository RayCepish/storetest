import 'package:injectable/injectable.dart';
import 'package:storetest/domain/entities/cart_item_entity.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/domain/repository/cart_repository.dart';

@injectable
class DecreaseCartItemQuantityUseCase {
  final CartRepository _repository;

  DecreaseCartItemQuantityUseCase(this._repository);

  Future<List<CartItem>> call(ProductItem product) async {
    final items = await _repository.getCartItems();

    final index = items.indexWhere((i) => i.product.id == product.id);
    if (index == -1) return items;

    final existing = items[index];

    if (existing.quantity > 1) {
      final updated = List<CartItem>.from(items)
        ..[index] = CartItem(
          product: existing.product,
          quantity: existing.quantity - 1,
        );

      await _repository.saveCartItems(updated);
      return updated;
    }

    // quantity == 1 → delete product
    final updated = items.where((i) => i.product.id != product.id).toList();

    await _repository.saveCartItems(updated);
    return updated;
  }
}
