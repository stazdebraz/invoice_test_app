// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:invoice_app/modules/create_invoice/create_invoice_screen.dart'
    as _i1;
import 'package:invoice_app/modules/dashboard/dashboard_screen.dart' as _i2;
import 'package:invoice_app/modules/edit_invoice/edit_invoice_screen.dart'
    as _i3;
import 'package:invoice_app/modules/loading/loading_screen.dart' as _i4;
import 'package:invoice_app/modules/welcome/welcome_screen.dart' as _i5;

/// generated route for
/// [_i1.CreateInvoiceScreen]
class CreateInvoiceRoute extends _i6.PageRouteInfo<void> {
  const CreateInvoiceRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CreateInvoiceRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateInvoiceRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.CreateInvoiceScreen();
    },
  );
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i3.EditInvoiceScreen]
class EditInvoiceRoute extends _i6.PageRouteInfo<void> {
  const EditInvoiceRoute({List<_i6.PageRouteInfo>? children})
      : super(
          EditInvoiceRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditInvoiceRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.EditInvoiceScreen();
    },
  );
}

/// generated route for
/// [_i4.LoadingScreen]
class LoadingRoute extends _i6.PageRouteInfo<void> {
  const LoadingRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoadingRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoadingScreen();
    },
  );
}

/// generated route for
/// [_i5.WelcomeScreen]
class WelcomeRoute extends _i6.PageRouteInfo<void> {
  const WelcomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.WelcomeScreen();
    },
  );
}
