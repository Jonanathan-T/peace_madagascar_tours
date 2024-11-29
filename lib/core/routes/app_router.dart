import 'package:auto_route/auto_route.dart';

import '../../features/contact/presentation/pages/contact_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: HomeRoute.page,
        ),
        AutoRoute(
          page: ContactRoute.page,
        ),
      ];
}
