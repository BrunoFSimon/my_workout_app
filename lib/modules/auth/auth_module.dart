import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_workout_app/modules/auth/login/login_page.dart';
import 'package:my_workout_app/modules/main/main_module.dart';

class AuthModule extends Module {
  @override
  List<Module> get imports => [MainModule()];

  @override
  void binds(Injector i) {}

  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      '/login',
      child: (c) => LoginPage(
        arguments: Modular.args.data,
        loginStore: Modular.get(),
      ),
    );
  }
}
