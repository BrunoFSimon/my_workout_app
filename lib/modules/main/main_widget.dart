import 'package:flutter/material.dart';
import 'package:my_workout_app/modules/main/main_store.dart';
import 'package:my_workout_app/widgets/app_circular_progress_indicator.dart';

class MainWidget extends StatefulWidget {
  final MainStore store;

  const MainWidget({
    super.key,
    required this.store,
  });

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  void initState() {
    widget.store.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppCircularProgressIndicator(),
      ),
    );
  }
}
