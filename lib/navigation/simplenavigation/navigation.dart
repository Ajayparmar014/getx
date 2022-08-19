// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx2/navigation/simplenavigation/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'This is for go to Home Screen',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  // Get.to(
                  //   const Home(),
                  //   //for full screen dialog
                  //   fullscreenDialog: true,
                  //   // for transition effect
                  //   transition: Transition.zoom,
                  //   //for duration transition
                  //   duration: const Duration(milliseconds: 2000),
                  //   curve: Curves.bounceInOut,
                  // );
                  //go to home screen but no option to return to previous screen
                  // Get.off(const Home());
                  //go to home screen and cancel all previous screen/routes
                  // Get.offAll(const Home());
                  // go to the next screen with some data
                  // Get.to(const Home(), arguments: 'Data From Main');
                  //go to the next screen and recieve data sent form the home screen
                  //previous screen data sent to next screen
                  var data = await Get.to(const Home());
                  print("The data recieve from home screen $data");
                },
                child: const Text(
                  'Go to Home',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
