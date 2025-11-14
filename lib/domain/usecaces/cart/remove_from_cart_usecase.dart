import 'package:injectable/injectable.dart';
import 'package:storetest/domain/entities/cart_item_entity.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/domain/repository/cart_repository.dart';

@injectable
class RemoveFromCartUseCase {
  final CartRepository _repository;

  RemoveFromCartUseCase(this._repository);

  Future<List<CartItem>> call(ProductItem product) async {
    final items = await _repository.getCartItems();

    final updated = items.where((i) => i.product.id != product.id).toList();

    await _repository.saveCartItems(updated);
    return updated;
  }
}
