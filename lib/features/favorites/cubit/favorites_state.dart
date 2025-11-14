part of 'favorites_cubit.dart';

abstract class FavoritesState {}

class FavoritesLoading extends FavoritesState {}

class FavoritesLoaded extends FavoritesState {
  final List<ProductItem> all;
  final List<ProductItem> filtered;

  FavoritesLoaded(this.all, this.filtered);
}
