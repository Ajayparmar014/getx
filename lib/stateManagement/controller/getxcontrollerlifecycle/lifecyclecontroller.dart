// ignore_for_file: avoid_print

import 'package:get/state_manager.dart';

class MyController extends GetxController {
  var count = 0;
  void increment() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    count++;
    update();
  }
}
