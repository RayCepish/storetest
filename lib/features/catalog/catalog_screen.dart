import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storetest/core/widgets/custom_input.dart';
import 'package:storetest/features/browser/browser_screen.dart';
import 'package:storetest/features/catalog/cubit/catalog_cubit.dart';
import 'package:storetest/features/favorites/cubit/favorites_cubit.dart';
import 'package:storetest/features/product_details/product_details_screen.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog"),
        actions: [
          IconButton(
            icon: const Icon(Icons.public),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const BrowserScreen()),
              );
            },
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12.w),
            child: CustomInput(
              hint: "Search...",
              onChanged: (value) => context.read<CatalogCubit>().search(value),
            ),
          ),
          Expanded(
            child: BlocBuilder<CatalogCubit, CatalogState>(
              builder: (context, state) {
                if (state is CatalogLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                final products = (state as CatalogLoaded).products;

                return ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (_, i) {
                    final product = products[i];
                    return ListTile(
                      title: Row(
                        children: [
                          BlocBuilder<FavoritesCubit, FavoritesState>(
                            builder: (context, state) {
                              final isFavorite =
                                  state is FavoritesLoaded &&
                                  state.all.any((p) => p.id == product.id);

                              return Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Theme.of(context).colorScheme.primary,
                                size: 22,
                              );
                            },
                          ),
                          SizedBox(width: 8.w),
                          Text(product.name),
                        ],
                      ),
                      subtitle: Text(product.description),
                      trailing: Text("\$${product.price}"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                ProductDetailsScreen(selectedProduct: product),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
