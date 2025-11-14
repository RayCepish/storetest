import 'package:injectable/injectable.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/domain/repository/favorites_repository.dart';

@injectable
class GetFavoritesUseCase {
  final FavoritesRepository _repository;

  GetFavoritesUseCase(this._repository);

  Future<List<ProductItem>> call() {
    return _repository.getFavorites();
  }
}
