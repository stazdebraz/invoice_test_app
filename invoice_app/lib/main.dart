import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:invoice_app/core/config/di/di.dart';
import 'package:invoice_app/core/config/router/app_router.dart';

final appRouter = AppRouter();
final di = GetIt.instance;

void main() {
  configureDependencies(di);
  runApp(InvoiceApp(
    appRouter: appRouter,
  ));
}

class InvoiceApp extends StatelessWidget {
  const InvoiceApp({
    required this.appRouter,
    super.key,
  });

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
