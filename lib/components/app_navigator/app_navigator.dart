import 'package:flutter_modular/flutter_modular.dart';

abstract class AppNavigator {
  Future<T?> push<T>(AppNavigatorRoute route);
  void navigate<T>(AppNavigatorRoute route);
}

class AppNavigatorImpl implements AppNavigator {
  @override
  Future<T?> push<T>(AppNavigatorRoute route) async {
    final result = await Modular.to.pushNamed<T>(
      route.routeName,
      arguments: route.arguments,
    );
    return result;
  }

  @override
  void navigate<T>(AppNavigatorRoute route) {
    Modular.to.navigate(
      route.routeName,
      arguments: route.arguments,
    );
  }
}

abstract class AppNavigatorRoute {
  final String routeName;
  final AppNavigatorArguments arguments;

  AppNavigatorRoute({
    required this.routeName,
    required this.arguments,
  });
}

abstract class AppNavigatorArguments {}
