import 'package:injectable/injectable.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/domain/repository/favorites_repository.dart';

@injectable
class ToggleFavoriteUseCase {
  final FavoritesRepository _repository;

  ToggleFavoriteUseCase(this._repository);

  Future<List<ProductItem>> call(ProductItem product) async {
    final current = await _repository.getFavorites();

    final exists = current.any((p) => p.id == product.id);
    final updated = exists
        ? current.where((p) => p.id != product.id).toList()
        : [...current, product];

    await _repository.saveFavorites(updated);
    return updated;
  }
}
