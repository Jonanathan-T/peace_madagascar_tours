// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CircuitDetailPage]
class CircuitDetailRoute extends PageRouteInfo<CircuitDetailRouteArgs> {
  CircuitDetailRoute({
    Key? key,
    required String circuitName,
    List<PageRouteInfo>? children,
  }) : super(
         CircuitDetailRoute.name,
         args: CircuitDetailRouteArgs(key: key, circuitName: circuitName),
         rawPathParams: {'name': circuitName},
         initialChildren: children,
       );

  static const String name = 'CircuitDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CircuitDetailRouteArgs>(
        orElse:
            () => CircuitDetailRouteArgs(
              circuitName: pathParams.getString('name'),
            ),
      );
      return CircuitDetailPage(key: args.key, circuitName: args.circuitName);
    },
  );
}

class CircuitDetailRouteArgs {
  const CircuitDetailRouteArgs({this.key, required this.circuitName});

  final Key? key;

  final String circuitName;

  @override
  String toString() {
    return 'CircuitDetailRouteArgs{key: $key, circuitName: $circuitName}';
  }
}

/// generated route for
/// [ContactPage]
class ContactRoute extends PageRouteInfo<ContactRouteArgs> {
  ContactRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        ContactRoute.name,
        args: ContactRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ContactRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ContactRouteArgs>(
        orElse: () => const ContactRouteArgs(),
      );
      return ContactPage(key: args.key);
    },
  );
}

class ContactRouteArgs {
  const ContactRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ContactRouteArgs{key: $key}';
  }
}

/// generated route for
/// [GaleriePage]
class GalerieRoute extends PageRouteInfo<void> {
  const GalerieRoute({List<PageRouteInfo>? children})
    : super(GalerieRoute.name, initialChildren: children);

  static const String name = 'GalerieRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const GaleriePage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [NotFoundPage]
class NotFoundRoute extends PageRouteInfo<void> {
  const NotFoundRoute({List<PageRouteInfo>? children})
    : super(NotFoundRoute.name, initialChildren: children);

  static const String name = 'NotFoundRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NotFoundPage();
    },
  );
}

/// generated route for
/// [OurMissionsSection]
class OurMissionsRoute extends PageRouteInfo<void> {
  const OurMissionsRoute({List<PageRouteInfo>? children})
    : super(OurMissionsRoute.name, initialChildren: children);

  static const String name = 'OurMissionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OurMissionsSection();
    },
  );
}

/// generated route for
/// [OurValuesSection]
class OurValuesRoute extends PageRouteInfo<void> {
  const OurValuesRoute({List<PageRouteInfo>? children})
    : super(OurValuesRoute.name, initialChildren: children);

  static const String name = 'OurValuesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OurValuesSection();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}

/// generated route for
/// [WhoAreWeSection]
class WhoAreWeRoute extends PageRouteInfo<void> {
  const WhoAreWeRoute({List<PageRouteInfo>? children})
    : super(WhoAreWeRoute.name, initialChildren: children);

  static const String name = 'WhoAreWeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WhoAreWeSection();
    },
  );
}
