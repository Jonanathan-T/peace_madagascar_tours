import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/about/presentation/section/our_missions_section.dart';
import '../../features/about/presentation/section/our_value_section.dart';
import '../../features/about/presentation/section/who_are_we_section.dart';
import '../../features/circuits/domaine/entities/circuit.dart';
import '../../features/circuits/presentation/page/circuit_detail_page.dart';
import '../../features/contact/presentation/pages/contact_page.dart';
import '../../features/galerie/presentation/pages/galerie_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/shared/page/not_found_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';

part 'app_router.gr.dart';
part 'guards.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Widget|Section,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        RedirectRoute(path: '/', redirectTo: '/splash'),
        RedirectRoute(path: '/circuit', redirectTo: '/home'),
        AutoRoute(
          path: '/splash',
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: '/who_are_we',
          page: WhoAreWeRoute.page,
        ),
        AutoRoute(
          path: '/our_values',
          page: OurValuesRoute.page,
        ),
        AutoRoute(
          path: '/our_mission',
          page: OurMissionsRoute.page,
        ),
        AutoRoute(
          path: '/contact',
          page: ContactRoute.page,
        ),
        AutoRoute(
          path: '/galerie',
          page: GalerieRoute.page,
        ),
        AutoRoute(
          path: '/circuit/:name',
          page: CircuitDetailRoute.page,
          guards: [CircuitGuard()],
        ),
        AutoRoute(
          path: '*',
          page: NotFoundRoute.page,
        ),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
}
