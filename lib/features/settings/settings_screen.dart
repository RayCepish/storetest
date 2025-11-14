import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storetest/features/settings/cubit/theme_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: BlocBuilder<ThemeCubit, AppThemeMode>(
        builder: (context, mode) {
          return RadioGroup<AppThemeMode>(
            groupValue: mode,
            onChanged: (newMode) =>
                context.read<ThemeCubit>().setTheme(newMode!),
            child: Column(
              children: [
                RadioListTile(
                  title: const Text("Light Theme"),
                  value: AppThemeMode.light,
                ),
                RadioListTile(
                  title: const Text("Dark Theme"),
                  value: AppThemeMode.dark,
                ),
                RadioListTile(
                  title: const Text("System Default"),
                  value: AppThemeMode.system,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
