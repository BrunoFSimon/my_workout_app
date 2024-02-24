import 'package:flutter/widgets.dart';
import 'package:my_workout_app/components/app_navigator/app_navigator.dart';
import 'package:my_workout_app/modules/auth/login/login_store.dart';

class LoginRoute implements AppNavigatorRoute {
  @override
  final String routeName = '/auth/login';

  @override
  final LoginArguments arguments;

  LoginRoute({
    required this.arguments,
  });
}

class LoginArguments extends AppNavigatorArguments {}

class LoginPage extends StatefulWidget {
  final LoginStore loginStore;
  final LoginArguments arguments;

  const LoginPage({
    super.key,
    required this.loginStore,
    required this.arguments,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
