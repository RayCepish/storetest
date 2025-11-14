import 'package:injectable/injectable.dart';
import 'package:storetest/domain/entities/cart_item_entity.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/domain/repository/cart_repository.dart';

@injectable
class AddToCartUseCase {
  final CartRepository _repository;

  AddToCartUseCase(this._repository);

  Future<List<CartItem>> call(ProductItem product) async {
    final items = await _repository.getCartItems();

    final index = items.indexWhere((i) => i.product.id == product.id);

    if (index == -1) {
      final updated = [...items, CartItem(product: product, quantity: 1)];
      await _repository.saveCartItems(updated);
      return updated;
    }

    final updated = List<CartItem>.from(items)
      ..[index] = CartItem(
        product: items[index].product,
        quantity: items[index].quantity + 1,
      );

    await _repository.saveCartItems(updated);
    return updated;
  }
}
