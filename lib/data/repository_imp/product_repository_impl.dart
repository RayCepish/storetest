import 'package:injectable/injectable.dart';
import 'package:storetest/data/models/product_model/product_model.dart';
import 'package:storetest/domain/entities/product_item_entity.dart';
import 'package:storetest/domain/repository/product_repository.dart';
import 'package:storetest/data/mappers/product_mapper.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final List<ProductModel> mockProducts = [
    ProductModel(
      id: 1,
      name: 'Red Apple',
      description: 'Fresh, juicy red apple rich in fiber and vitamin C.',
      price: 12.50,
    ),
    ProductModel(
      id: 2,
      name: 'Banana',
      description:
          'Sweet ripe banana packed with potassium and natural energy.',
      price: 17.30,
    ),
    ProductModel(
      id: 3,
      name: 'Milk 2.5%',
      description: 'Natural pasteurized milk with a soft creamy taste.',
      price: 32.00,
    ),
    ProductModel(
      id: 4,
      name: 'White Bread',
      description: 'Freshly baked soft white loaf. Perfect for sandwiches.',
      price: 18.00,
    ),
    ProductModel(
      id: 5,
      name: 'Long Grain Rice',
      description:
          'Premium long-grain rice, ideal for pilaf, curry, and side dishes.',
      price: 45.90,
    ),
    ProductModel(
      id: 6,
      name: 'Chicken Breast',
      description:
          'Lean boneless chicken breast. High in protein, great for meal prep.',
      price: 139.00,
    ),
    ProductModel(
      id: 7,
      name: 'Salmon Fillet',
      description:
          'Fresh Atlantic salmon fillet with rich flavor and healthy omega-3.',
      price: 289.00,
    ),
    ProductModel(
      id: 8,
      name: 'Young Potatoes',
      description: 'Tender young potatoes suitable for boiling and roasting.',
      price: 14.40,
    ),
    ProductModel(
      id: 9,
      name: 'Fresh Carrots',
      description: 'Crisp sweet carrots perfect for salads, soups, and snacks.',
      price: 11.20,
    ),
    ProductModel(
      id: 10,
      name: 'Gouda Cheese',
      description: 'Aromatic semi-hard cheese with a smooth creamy flavor.',
      price: 98.50,
    ),
    ProductModel(
      id: 11,
      name: 'Buckwheat Groats',
      description:
          'Toasted buckwheat of premium quality. Nutritious and filling.',
      price: 39.20,
    ),
    ProductModel(
      id: 12,
      name: 'Olive Oil Extra Virgin',
      description: 'Cold-pressed Extra Virgin olive oil from Italy.',
      price: 159.00,
    ),
    ProductModel(
      id: 13,
      name: 'Chicken Eggs (10 pcs)',
      description: 'Fresh farm eggs, category M. Perfect for breakfast.',
      price: 49.90,
    ),
    ProductModel(
      id: 14,
      name: 'Cherry Tomatoes',
      description: 'Sweet cherry tomatoes full of fresh Mediterranean flavor.',
      price: 36.80,
    ),
    ProductModel(
      id: 15,
      name: 'Black Tea',
      description: 'Classic strong black tea with a rich aroma.',
      price: 27.40,
    ),
    ProductModel(
      id: 16,
      name: 'Ground Coffee',
      description: 'Medium-roast blend of Arabica and Robusta beans.',
      price: 89.00,
    ),
    ProductModel(
      id: 17,
      name: 'Natural Honey',
      description: 'Raw floral honey from a local bee farm.',
      price: 120.00,
    ),
    ProductModel(
      id: 18,
      name: 'Walnut Kernels',
      description: 'Shelled walnut halves rich in healthy fats and minerals.',
      price: 145.50,
    ),
    ProductModel(
      id: 19,
      name: 'Spaghetti Pasta',
      description: 'Italian-style pasta made from premium durum wheat.',
      price: 24.30,
    ),
    ProductModel(
      id: 20,
      name: 'Greek Yogurt',
      description: 'Thick, creamy, unsweetened Greek yogurt.',
      price: 34.00,
    ),
  ];

  @override
  Future<List<ProductItem>> getAllProducts() async {
    return mockProducts.map((m) => m.toEntity()).toList();
  }

  @override
  Future<List<ProductItem>> searchProducts(String query) async {
    return mockProducts
        .where((p) => p.name.toLowerCase().contains(query.toLowerCase()))
        .map((m) => m.toEntity())
        .toList();
  }
}
