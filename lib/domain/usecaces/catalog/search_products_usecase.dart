import 'package:injectable/injectable.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/domain/repository/product_repository.dart';

@injectable
class SearchProductsUseCase {
  final ProductRepository _repository;

  SearchProductsUseCase(this._repository);

  Future<List<ProductItem>> call(String query) {
    return _repository.searchProducts(query);
  }
}
