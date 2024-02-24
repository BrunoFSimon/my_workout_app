import 'package:flutter/material.dart';
import 'package:my_workout_app/modules/main/main_store.dart';
import 'package:my_workout_app/widgets/app_circular_progress_indicator.dart';

class MainPage extends StatefulWidget {
  final MainStore store;

  const MainPage({
    super.key,
    required this.store,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
