// ignore_for_file: avoid_print

import 'package:get/get.dart';

class WorkerController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  void onInit() {
    super.onInit();
    //how worker works
    // this is ever worker
    //called every time when the value of count variable changes
    // ever(count, (_) => print(count));
    //called every time when the value of any variable from the list changes
    // everAll([count], (_) => print(count));

//called only once when the variable value change
    // once(count, (_) => print(count));
    //called every time the user stops typing for 1 second
    /* debounce(
        count,
        (_) => print(
            'when the user stop typing for 1 sec the value of count is $count'),
        time: const Duration(seconds: 1));*/
    //Ignore all changes within 3 second.
    //imagine that the user can earn coin by clicking on something
    //if he clicked 300 times in the same minutes,
    //he would have 300 coins, using interval,
    //you can set a time frame for 3 seconds,
    //and even the clicking 300 or a thousand times,
    //the maximum he would get in 1 minutes would be 20 coins,
    //clicking 300 or 1 million times
    interval(count, (_) => print('ignore all changes'),
        time: const Duration(seconds: 3));
  }
}
