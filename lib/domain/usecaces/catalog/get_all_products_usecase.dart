import 'package:injectable/injectable.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/domain/repository/product_repository.dart';

@injectable
class GetAllProductsUseCase {
  final ProductRepository _repository;

  GetAllProductsUseCase(this._repository);

  Future<List<ProductItem>> call() {
    return _repository.getAllProducts();
  }
}
