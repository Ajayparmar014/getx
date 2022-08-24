import 'package:get/state_manager.dart';

class BindingController extends GetxController {
  var count = 0.obs;

  void increments() {
    count++;
  }
}
