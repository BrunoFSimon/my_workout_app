import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_workout_app/modules/main/main_module.dart';
import 'package:my_workout_app/modules/main/main_widget.dart';

void main() {
  return runApp(
    ModularApp(
      module: MainModule(),
      child: MainWidget(store: Modular.get()),
    ),
  );
}
