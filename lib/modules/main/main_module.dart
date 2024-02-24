import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_workout_app/components/app_navigator/app_navigator.dart';
import 'package:my_workout_app/modules/main/main_store.dart';

class MainModule extends Module {
  @override
  List<Module> get imports => const [];

  @override
  void binds(Injector i) {
    i.add(MainStore.new);
  }

  @override
  void exportedBinds(Injector i) {
    i.add<AppNavigator>(AppNavigatorImpl.new);
  }

  @override
  void routes(RouteManager r) {}
}
