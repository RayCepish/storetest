import 'package:injectable/injectable.dart';
import 'package:storetest/domain/repository/cart_repository.dart';

@injectable
class GetCartTotalUseCase {
  final CartRepository _repository;

  GetCartTotalUseCase(this._repository);

  Future<double> call() async {
    final items = await _repository.getCartItems();

    return items.fold<double>(
      0.0,
      (sum, item) => sum + item.product.price * item.quantity,
    );
  }
}
