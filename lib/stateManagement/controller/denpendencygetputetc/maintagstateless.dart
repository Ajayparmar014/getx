// with stateless widgets
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tagcontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //My controller instance will be created even if it is not use
    //tag will be used to find the instance with tag name
    //controller is dispose when it is not used but if permanent is true
    //the instance will be alive throughout the app
    // TagController tagController = Get.put(
    //   TagController(),
    //   tag: 'anynameoftag',
    //   permanent: true,
    // );
    //Instance will be created when it used
    //fenix, it is similar to 'permanent' the difference is that the
    //instance is discard when is not being used
    //but when it's use is needed again, get will recreate the instance
    // Get.lazyPut(() => TagController(), tag: 'instance2', fenix: true);
    Get.putAsync<TagController>(() async => TagController());
    // Get.create<TagController>(
    //   () => TagController(),
    // );
    return GetMaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Get.put all related'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //instance wiil be created with tag
                // Get.find<TagController>(tag: 'anynameoftag');
                // find instance
                Get.find<TagController>();
                Get.find<TagController>().incrementCounter();
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    ));
  }
}
