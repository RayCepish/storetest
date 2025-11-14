import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storetest/core/theme/app_theme.dart';
import 'package:storetest/data/mappers/theme_mode_mapper.dart';
import 'package:storetest/dependency_injection/setup_dependency.dart';
import 'package:storetest/features/cart/cubit/cart_cubit.dart';
import 'package:storetest/features/catalog/cubit/catalog_cubit.dart';
import 'package:storetest/features/favorites/cubit/favorites_cubit.dart';
import 'package:storetest/features/browser/cubit/browser_cubit.dart';
import 'package:storetest/features/main_navigation_screen.dart';
import 'package:storetest/features/settings/cubit/theme_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<ThemeCubit>()),
            BlocProvider(create: (_) => getIt<CatalogCubit>()),
            BlocProvider(create: (_) => getIt<FavoritesCubit>()),
            BlocProvider(create: (_) => getIt<CartCubit>()),
            BlocProvider(create: (_) => getIt<BrowserCubit>()),
          ],
          child: BlocBuilder<ThemeCubit, AppThemeMode>(
            builder: (_, mode) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: TAppTheme.lightTheme,
                darkTheme: TAppTheme.darkTheme,
                themeMode: mode.toThemeMode(),
                home: const MainNavigationScreen(),
              );
            },
          ),
        );
      },
    );
  }
}
