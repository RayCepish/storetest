import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:storetest/data/models/product_model/product_model.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

@freezed
sealed class FavoriteModel with _$FavoriteModel {
  const factory FavoriteModel({required ProductModel product}) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);
}
