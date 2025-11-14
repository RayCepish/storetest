import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class BrowserCubit extends Cubit<double> {
  BrowserCubit() : super(0.0);

  void updateProgress(double value) => emit(value);
}
