import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storetest/core/widgets/custom_input.dart';
import 'package:storetest/features/favorites/cubit/favorites_cubit.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favorites")),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12.w),
            child: CustomInput(
              hint: "Search favorites...",
              onChanged: (value) =>
                  context.read<FavoritesCubit>().search(value),
            ),
          ),

          Expanded(
            child: BlocBuilder<FavoritesCubit, FavoritesState>(
              builder: (context, state) {
                if (state is FavoritesLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                final s = state as FavoritesLoaded;
                final items = s.filtered;

                if (items.isEmpty) {
                  return const Center(child: Text("Temporary empty"));
                }

                return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (_, i) {
                    final product = items[i];
                    return ListTile(
                      title: Text(product.name),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () =>
                            context.read<FavoritesCubit>().toggle(product),
                      ),
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
