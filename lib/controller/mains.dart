// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/controller/controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'StateManagement',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Name is ${myController.exstudent.value.name}",
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        myController.convertToUpperCase();
                      },
                      child: const Text('Upper Case'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        myController.convertToLowerCase();
                      },
                      child: const Text('Lower Case'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
