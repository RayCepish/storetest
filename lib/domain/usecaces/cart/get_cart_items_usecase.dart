import 'package:injectable/injectable.dart';
import 'package:storetest/domain/entities/cart_item_entity.dart';
import 'package:storetest/domain/repository/cart_repository.dart';

@injectable
class GetCartItemsUseCase {
  final CartRepository _repository;

  GetCartItemsUseCase(this._repository);

  Future<List<CartItem>> call() {
    return _repository.getCartItems();
  }
}
