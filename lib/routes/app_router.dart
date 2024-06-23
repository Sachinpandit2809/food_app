import 'package:auto_route/auto_route.dart';
import 'package:food_app/routes/routes_name.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, path: RoutesName.login, initial: true),
        AutoRoute(
          page: SignupRoute.page,
          path: RoutesName.signin,
        )
      ];
}
