import 'package:equatable/equatable.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';

class FavoriteItem extends Equatable {
  final ProductItem product;

  const FavoriteItem({required this.product});

  @override
  List<Object?> get props => [product];
}
