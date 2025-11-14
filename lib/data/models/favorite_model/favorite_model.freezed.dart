// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteModel {

 ProductModel get product;
/// Create a copy of FavoriteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteModelCopyWith<FavoriteModel> get copyWith => _$FavoriteModelCopyWithImpl<FavoriteModel>(this as FavoriteModel, _$identity);

  /// Serializes this FavoriteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteModel&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'FavoriteModel(product: $product)';
}


}

/// @nodoc
abstract mixin class $FavoriteModelCopyWith<$Res>  {
  factory $FavoriteModelCopyWith(FavoriteModel value, $Res Function(FavoriteModel) _then) = _$FavoriteModelCopyWithImpl;
@useResult
$Res call({
 ProductModel product
});


$ProductModelCopyWith<$Res> get product;

}
/// @nodoc
class _$FavoriteModelCopyWithImpl<$Res>
    implements $FavoriteModelCopyWith<$Res> {
  _$FavoriteModelCopyWithImpl(this._self, this._then);

  final FavoriteModel _self;
  final $Res Function(FavoriteModel) _then;

/// Create a copy of FavoriteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel,
  ));
}
/// Create a copy of FavoriteModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res> get product {
  
  return $ProductModelCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavoriteModel].
extension FavoriteModelPatterns on FavoriteModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteModel value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteModel value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductModel product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteModel() when $default != null:
return $default(_that.product);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductModel product)  $default,) {final _that = this;
switch (_that) {
case _FavoriteModel():
return $default(_that.product);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductModel product)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteModel() when $default != null:
return $default(_that.product);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteModel implements FavoriteModel {
  const _FavoriteModel({required this.product});
  factory _FavoriteModel.fromJson(Map<String, dynamic> json) => _$FavoriteModelFromJson(json);

@override final  ProductModel product;

/// Create a copy of FavoriteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteModelCopyWith<_FavoriteModel> get copyWith => __$FavoriteModelCopyWithImpl<_FavoriteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteModel&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'FavoriteModel(product: $product)';
}


}

/// @nodoc
abstract mixin class _$FavoriteModelCopyWith<$Res> implements $FavoriteModelCopyWith<$Res> {
  factory _$FavoriteModelCopyWith(_FavoriteModel value, $Res Function(_FavoriteModel) _then) = __$FavoriteModelCopyWithImpl;
@override @useResult
$Res call({
 ProductModel product
});


@override $ProductModelCopyWith<$Res> get product;

}
/// @nodoc
class __$FavoriteModelCopyWithImpl<$Res>
    implements _$FavoriteModelCopyWith<$Res> {
  __$FavoriteModelCopyWithImpl(this._self, this._then);

  final _FavoriteModel _self;
  final $Res Function(_FavoriteModel) _then;

/// Create a copy of FavoriteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_FavoriteModel(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel,
  ));
}

/// Create a copy of FavoriteModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res> get product {
  
  return $ProductModelCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
