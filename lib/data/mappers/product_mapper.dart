import 'package:storetest/data/models/product_model/product_model.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';

extension ProductMapper on ProductModel {
  ProductItem toEntity() {
    return ProductItem(
      id: id,
      name: name,
      description: description,
      price: price,
    );
  }
}

extension ProductModelMapper on ProductItem {
  ProductModel toModel() {
    return ProductModel(
      id: id,
      name: name,
      description: description,
      price: price,
    );
  }
}
