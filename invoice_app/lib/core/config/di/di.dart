import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:invoice_app/core/config/di/di.config.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies(GetIt di) => di.init();
