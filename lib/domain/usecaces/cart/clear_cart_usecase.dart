import 'package:injectable/injectable.dart';
import 'package:storetest/domain/entities/cart_item_entity.dart';
import 'package:storetest/domain/repository/cart_repository.dart';

@injectable
class ClearCartUseCase {
  final CartRepository _repository;

  ClearCartUseCase(this._repository);

  Future<List<CartItem>> call() async {
    const updated = <CartItem>[];
    await _repository.saveCartItems(updated);
    return updated;
  }
}
