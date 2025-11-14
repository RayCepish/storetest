import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storetest/features/cart/cubit/cart_cubit.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => context.read<CartCubit>().clear(),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<CartCubit, CartState>(
          builder: (_, state) {
            final s = state as CartLoaded;
            if (s.items.isEmpty) {
              return Center(
                child: Text(
                  "Cart is empty",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              );
            }
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: s.items.length,
                    itemBuilder: (_, i) {
                      final item = s.items[i];
                      return ListTile(
                        leading: Text(item.quantity.toString()),
                        title: Text(item.product.name),
                        subtitle: Text("\$${item.product.price}"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () => context
                                  .read<CartCubit>()
                                  .decrease(item.product),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () =>
                                  context.read<CartCubit>().add(item.product),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.w),
                  child: Text(
                    "Total: \$${s.total}",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
