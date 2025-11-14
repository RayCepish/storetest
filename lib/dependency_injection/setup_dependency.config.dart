// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:storetest/data/data_sources/local_storage_service.dart'
    as _i521;
import 'package:storetest/data/repository_imp/cart_repository_impl.dart'
    as _i1002;
import 'package:storetest/data/repository_imp/favorites_repository_impl.dart'
    as _i1052;
import 'package:storetest/data/repository_imp/product_repository_impl.dart'
    as _i932;
import 'package:storetest/dependency_injection/modules.dart' as _i213;
import 'package:storetest/domain/repository/cart_repository.dart' as _i993;
import 'package:storetest/domain/repository/favorites_repository.dart' as _i961;
import 'package:storetest/domain/repository/product_repository.dart' as _i133;
import 'package:storetest/domain/repository/settings_repository.dart' as _i188;
import 'package:storetest/domain/usecaces/cart/add_to_cart_usecase.dart'
    as _i593;
import 'package:storetest/domain/usecaces/cart/clear_cart_usecase.dart'
    as _i885;
import 'package:storetest/domain/usecaces/cart/decrease_cart_item_quantity_usecase.dart'
    as _i63;
import 'package:storetest/domain/usecaces/cart/get_cart_items_usecase.dart'
    as _i280;
import 'package:storetest/domain/usecaces/cart/get_cart_total_usecase.dart'
    as _i902;
import 'package:storetest/domain/usecaces/cart/remove_from_cart_usecase.dart'
    as _i577;
import 'package:storetest/domain/usecaces/catalog/get_all_products_usecase.dart'
    as _i11;
import 'package:storetest/domain/usecaces/catalog/search_products_usecase.dart'
    as _i271;
import 'package:storetest/domain/usecaces/favorites/get_favorites_usecase.dart'
    as _i919;
import 'package:storetest/domain/usecaces/favorites/toggle_favorite_usecase.dart'
    as _i379;
import 'package:storetest/domain/usecaces/settings/get_app_theme_mode_usecase.dart'
    as _i959;
import 'package:storetest/domain/usecaces/settings/set_app_theme_mode_usecase.dart'
    as _i538;
import 'package:storetest/features/browser/cubit/browser_cubit.dart' as _i532;
import 'package:storetest/features/cart/cubit/cart_cubit.dart' as _i768;
import 'package:storetest/features/catalog/cubit/catalog_cubit.dart' as _i553;
import 'package:storetest/features/favorites/cubit/favorites_cubit.dart'
    as _i216;
import 'package:storetest/features/settings/cubit/theme_cubit.dart' as _i683;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.preferences,
      preResolve: true,
    );
    gh.factory<_i532.BrowserCubit>(() => _i532.BrowserCubit());
    gh.lazySingleton<_i521.LocalStorageService>(
      () => _i521.LocalStorageService(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i683.ThemeCubit>(
      () => _i683.ThemeCubit(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i133.ProductRepository>(
      () => _i932.ProductRepositoryImpl(),
    );
    gh.lazySingleton<_i961.FavoritesRepository>(
      () => _i1052.FavoritesRepositoryImpl(gh<_i521.LocalStorageService>()),
    );
    gh.factory<_i11.GetAllProductsUseCase>(
      () => _i11.GetAllProductsUseCase(gh<_i133.ProductRepository>()),
    );
    gh.factory<_i271.SearchProductsUseCase>(
      () => _i271.SearchProductsUseCase(gh<_i133.ProductRepository>()),
    );
    gh.lazySingleton<_i993.CartRepository>(
      () => _i1002.CartRepositoryImpl(gh<_i521.LocalStorageService>()),
    );
    gh.factory<_i593.AddToCartUseCase>(
      () => _i593.AddToCartUseCase(gh<_i993.CartRepository>()),
    );
    gh.factory<_i885.ClearCartUseCase>(
      () => _i885.ClearCartUseCase(gh<_i993.CartRepository>()),
    );
    gh.factory<_i63.DecreaseCartItemQuantityUseCase>(
      () => _i63.DecreaseCartItemQuantityUseCase(gh<_i993.CartRepository>()),
    );
    gh.factory<_i280.GetCartItemsUseCase>(
      () => _i280.GetCartItemsUseCase(gh<_i993.CartRepository>()),
    );
    gh.factory<_i902.GetCartTotalUseCase>(
      () => _i902.GetCartTotalUseCase(gh<_i993.CartRepository>()),
    );
    gh.factory<_i577.RemoveFromCartUseCase>(
      () => _i577.RemoveFromCartUseCase(gh<_i993.CartRepository>()),
    );
    gh.factory<_i959.GetAppThemeModeUseCase>(
      () => _i959.GetAppThemeModeUseCase(gh<_i188.SettingsRepository>()),
    );
    gh.factory<_i538.SetAppThemeModeUseCase>(
      () => _i538.SetAppThemeModeUseCase(gh<_i188.SettingsRepository>()),
    );
    gh.factory<_i768.CartCubit>(
      () => _i768.CartCubit(
        gh<_i280.GetCartItemsUseCase>(),
        gh<_i593.AddToCartUseCase>(),
        gh<_i577.RemoveFromCartUseCase>(),
        gh<_i63.DecreaseCartItemQuantityUseCase>(),
        gh<_i885.ClearCartUseCase>(),
        gh<_i902.GetCartTotalUseCase>(),
      ),
    );
    gh.factory<_i919.GetFavoritesUseCase>(
      () => _i919.GetFavoritesUseCase(gh<_i961.FavoritesRepository>()),
    );
    gh.factory<_i379.ToggleFavoriteUseCase>(
      () => _i379.ToggleFavoriteUseCase(gh<_i961.FavoritesRepository>()),
    );
    gh.factory<_i216.FavoritesCubit>(
      () => _i216.FavoritesCubit(
        gh<_i919.GetFavoritesUseCase>(),
        gh<_i379.ToggleFavoriteUseCase>(),
      ),
    );
    gh.factory<_i553.CatalogCubit>(
      () => _i553.CatalogCubit(gh<_i11.GetAllProductsUseCase>()),
    );
    return this;
  }
}

class _$AppModule extends _i213.AppModule {}
