import 'package:firebase_core/firebase_core.dart';
import 'package:mobx/mobx.dart';
import 'package:my_workout_app/components/app_navigator/app_navigator.dart';
import 'package:my_workout_app/firebase_options.dart';
import 'package:my_workout_app/modules/auth/login/login_page.dart';

part 'main_store.g.dart';

class MainStore = MainStoreBase with _$MainStore;

abstract class MainStoreBase with Store {
  final AppNavigator _appNavigator;

  MainStoreBase(this._appNavigator);

  Future<void> init() async {
    final options = DefaultFirebaseOptions.currentPlatform;
    await Firebase.initializeApp(options: options);

    final navigatorRoute = LoginRoute(arguments: LoginArguments());
    _appNavigator.navigate(navigatorRoute);
  }
}
