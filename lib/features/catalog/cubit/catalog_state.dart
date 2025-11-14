part of 'catalog_cubit.dart';

abstract class CatalogState {}

class CatalogLoading extends CatalogState {}

class CatalogLoaded extends CatalogState {
  final List<ProductItem> products;

  CatalogLoaded(this.products);
}
