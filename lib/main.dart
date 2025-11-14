import 'package:flutter/material.dart';
import 'package:storetest/app.dart';
import 'package:storetest/dependency_injection/setup_dependency.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupDependency();

  runApp(const MyApp());
}
