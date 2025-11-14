import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/domain/usecaces/favorites/get_favorites_usecase.dart';
import 'package:storetest/domain/usecaces/favorites/toggle_favorite_usecase.dart';

part 'favorites_state.dart';

@injectable
class FavoritesCubit extends Cubit<FavoritesState> {
  final GetFavoritesUseCase _getFavorites;
  final ToggleFavoriteUseCase _toggle;

  FavoritesCubit(this._getFavorites, this._toggle) : super(FavoritesLoading()) {
    load();
  }

  Future<void> load() async {
    emit(FavoritesLoading());
    final favorites = await _getFavorites();
    emit(FavoritesLoaded(favorites, favorites));
  }

  Future<void> toggle(ProductItem product) async {
    final updated = await _toggle(product);
    emit(FavoritesLoaded(updated, updated));
  }

  void search(String query) {
    if (state is! FavoritesLoaded) return;

    final current = state as FavoritesLoaded;

    if (query.isEmpty) {
      emit(FavoritesLoaded(current.all, current.all));
      return;
    }

    final filtered = current.all
        .where(
          (product) => product.name.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();

    emit(FavoritesLoaded(current.all, filtered));
  }
}
