import 'package:auto_route/auto_route.dart';
import 'package:invoice_app/core/config/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CreateInvoiceRoute.page),
        AutoRoute(page: DashboardRoute.page),
        AutoRoute(page: EditInvoiceRoute.page),
        AutoRoute(page: LoadingRoute.page, initial: true),
        AutoRoute(page: WelcomeRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: BusinessRoute.page),
        AutoRoute(page: SendInvoiceRoute.page),
        AutoRoute(page: CreateBusinessRoute.page),
      ];
}
