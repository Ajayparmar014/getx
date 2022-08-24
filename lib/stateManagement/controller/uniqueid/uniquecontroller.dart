import 'package:get/state_manager.dart';

class UniqueController extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update(['CountID']);
  }
}
