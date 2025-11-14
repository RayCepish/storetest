import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storetest/features/cart/cart_screen.dart';
import 'package:storetest/features/cart/cubit/cart_cubit.dart';
import 'package:storetest/features/catalog/catalog_screen.dart';
import 'package:storetest/features/favorites/favorites_screen.dart';
import 'package:storetest/features/settings/settings_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int index = 0;

  final screens = const [
    CatalogScreen(),
    FavoritesScreen(),
    CartScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          final color = Theme.of(context).colorScheme.primary;

          int cartCount = 0;

          if (state is CartLoaded) {
            cartCount = state.items.length;
          }

          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.08),
                  blurRadius: 12,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: NavigationBar(
              selectedIndex: index,
              onDestinationSelected: (i) => setState(() => index = i),
              destinations: [
                const NavigationDestination(
                  icon: Icon(Icons.store),
                  label: "Catalog",
                ),

                const NavigationDestination(
                  icon: Icon(Icons.favorite),
                  label: "Favorites",
                ),

                NavigationDestination(
                  icon: Badge(
                    isLabelVisible: cartCount > 0,
                    backgroundColor: Colors.red,
                    label: Text(
                      "$cartCount",
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall!.copyWith(color: Colors.white),
                    ),
                    child: const Icon(Icons.shopping_cart),
                  ),
                  label: "Cart",
                ),

                const NavigationDestination(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
