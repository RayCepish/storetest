import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:storetest/domain/entities/cart_item_entity.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/domain/usecaces/cart/add_to_cart_usecase.dart';
import 'package:storetest/domain/usecaces/cart/clear_cart_usecase.dart';
import 'package:storetest/domain/usecaces/cart/decrease_cart_item_quantity_usecase.dart';
import 'package:storetest/domain/usecaces/cart/get_cart_items_usecase.dart';
import 'package:storetest/domain/usecaces/cart/get_cart_total_usecase.dart';
import 'package:storetest/domain/usecaces/cart/remove_from_cart_usecase.dart';

part 'cart_state.dart';

@injectable
class CartCubit extends Cubit<CartState> {
  final GetCartItemsUseCase _getItems;
  final AddToCartUseCase _add;
  final RemoveFromCartUseCase _remove;
  final DecreaseCartItemQuantityUseCase _decrease;
  final ClearCartUseCase _clear;
  final GetCartTotalUseCase _total;

  CartCubit(
    this._getItems,
    this._add,
    this._remove,
    this._decrease,
    this._clear,
    this._total,
  ) : super(CartLoading()) {
    load();
  }

  Future<void> load() async {
    emit(CartLoading());
    final items = await _getItems();
    final total = await _total();
    emit(CartLoaded(items, total));
  }

  Future<void> add(ProductItem p) async {
    final items = await _add(p);
    final total = await _total();
    emit(CartLoaded(items, total));
  }

  Future<void> remove(ProductItem p) async {
    final items = await _remove(p);
    final total = await _total();
    emit(CartLoaded(items, total));
  }

  Future<void> decrease(ProductItem p) async {
    final items = await _decrease(p);
    final total = await _total();
    emit(CartLoaded(items, total));
  }

  Future<void> clear() async {
    final items = await _clear();
    emit(CartLoaded(items, 0));
  }

  int getQuantity(ProductItem product) {
    if (state is! CartLoaded) return 0;
    final loaded = state as CartLoaded;

    final item = loaded.items.firstWhere(
      (i) => i.product.id == product.id,
      orElse: () => CartItem(product: product, quantity: 0),
    );

    return item.quantity;
  }
}
