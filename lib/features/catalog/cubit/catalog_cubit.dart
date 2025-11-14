import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/domain/usecaces/catalog/get_all_products_usecase.dart';

part 'catalog_state.dart';

@injectable
class CatalogCubit extends Cubit<CatalogState> {
  final GetAllProductsUseCase _getProducts;

  CatalogCubit(this._getProducts) : super(CatalogLoading()) {
    loadProducts();
  }

  Future<void> loadProducts() async {
    emit(CatalogLoading());
    final products = await _getProducts();
    emit(CatalogLoaded(products));
  }

  void search(String query) async {
    if (query.isEmpty) return loadProducts();

    if (state is! CatalogLoaded) return;

    final all = (state as CatalogLoaded).products;

    final filtered = all
        .where((p) => p.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    emit(CatalogLoaded(filtered));
  }
}
