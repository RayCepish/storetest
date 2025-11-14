import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storetest/core/widgets/custom_button.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/features/cart/cubit/cart_cubit.dart';
import 'package:storetest/features/favorites/cubit/favorites_cubit.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductItem selectedProduct;

  const ProductDetailsScreen({super.key, required this.selectedProduct});

  @override
  Widget build(BuildContext context) {
    final favoritesCubit = context.watch<FavoritesCubit>();
    final cartCubit = context.watch<CartCubit>();

    final isFavorite =
        favoritesCubit.state is FavoritesLoaded &&
        (favoritesCubit.state as FavoritesLoaded).all.any(
          (product) => product.id == selectedProduct.id,
        );

    final quantity = cartCubit.getQuantity(selectedProduct);
    final addToCartText = quantity == 0
        ? "Add to Cart"
        : "Add to Cart ($quantity)";

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedProduct.name),
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () =>
                context.read<FavoritesCubit>().toggle(selectedProduct),
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              selectedProduct.name,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 12.h),

            Text(
              selectedProduct.description,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 20.h),

            Text(
              "\$${selectedProduct.price}",
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const Spacer(),

            CustomButton(
              text: addToCartText,
              icon: Icons.add_shopping_cart,
              onPressed: () => context.read<CartCubit>().add(selectedProduct),
            ),
          ],
        ),
      ),
    );
  }
}
