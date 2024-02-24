import 'package:firebase_core/firebase_core.dart';
import 'package:mobx/mobx.dart';
import 'package:my_workout_app/firebase_options.dart';

part 'main_store.g.dart';

class MainStore = MainStoreBase with _$MainStore;

abstract class MainStoreBase with Store {
  Future<void> init() async {
    final options = DefaultFirebaseOptions.currentPlatform;
    await Firebase.initializeApp(options: options);
  }
}
