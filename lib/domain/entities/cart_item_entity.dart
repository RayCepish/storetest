import 'package:equatable/equatable.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';

class CartItem extends Equatable {
  final ProductItem product;
  final int quantity;

  const CartItem({required this.product, required this.quantity});

  @override
  List<Object?> get props => [product, quantity];
}
