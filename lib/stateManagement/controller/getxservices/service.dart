// ignore_for_file: avoid_print

import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Services extends GetxService {
  void increment() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print(" pressed $counter times");
    await prefs.setInt('counter', counter);
  }
}
