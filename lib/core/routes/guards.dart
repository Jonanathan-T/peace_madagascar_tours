part of 'app_router.dart';

class CircuitGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final name = resolver.route.pathParams.getString('name');
    if (name.isEmpty || !circuits.containsKey(name)) {
      // Rediriger vers une autre route si le paramètre `name` est vide
      router.replaceNamed('/home');
    } else {
      // Continuer la navigation si le paramètre `name` n'est pas vide
      resolver.next(true);
    }
  }
}
