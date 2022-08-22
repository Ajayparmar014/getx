import 'package:get/state_manager.dart';

class MyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }
}
